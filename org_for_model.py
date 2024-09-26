# the combo move

print("Loading libraries...")
import os
import json
from pandas import read_csv, read_sql, json_normalize, DataFrame
import oracledb
from openai import OpenAI
print("Libraries loaded!")

# global for one-time initializations for speed
GPT_CLIENT 	  = OpenAI(api_key=os.environ.get("OPENAI_API_KEY"))
print("\nSuccessfully connected to OpenAI servers via API")

DB_CONNECTION = oracledb.connect("system/password1234@127.0.0.1/XE")
DB_CURSOR     = DB_CONNECTION.cursor() 
print("Successfully connected to Oracle Database in local Docker container")



def get_essays(assignment_ID: str) -> DataFrame:
  
  print("Querying DB for essays...")
  # parametrized query for sanitization
  essay_table_cols = ["StudentID", 
                      "PromptTitle1", "PromptTitle2", "PromptTitle3", "PromptTitle4", 
                      "PromptTitle5", "PromptTitle6", "PromptTitle7",
                      "Answer1", "Answer2", "Answer3", "Answer4", "Answer5", "Answer6", "Answer7"
                      ]
 
  col_name_str = ','.join(essay_table_cols)
  query = """
          SELECT %s
          FROM StudentAnswers sa
              INNER JOIN Assignments a ON sa.AssignmentID = a.AssignmentID
          WHERE sa.AssignmentID = :a_ID
          """ % col_name_str

  essay_table = read_sql(query, 
                         DB_CONNECTION, 
                         params={"a_ID": assignment_ID}
                         )

  print("Successfully retrieved essays.\n")
  return essay_table


def clean_essay(essay_text: oracledb.LOB, 
                stand_ins:  DataFrame) -> str:

  # text is received as a CLOB, extract data inside to string
  essay_text = essay_text.read()
  
  # double and triple quotes get counted as grammar errors
  essay_text = essay_text.replace("\"\"\"", "\'")
  essay_text = essay_text.replace("\"\"",   "\'")     

  # insert reasonable values for anonymizations
  for idx, replacement in stand_ins.iterrows():
    essay_text = essay_text.replace(replacement["Variable"],
                                    replacement["Stand-in_Value"]
                                    )

  return essay_text


def get_GPT_eval(topic: str,
                 essay_text: oracledb.LOB,
                 stand_ins: DataFrame,
                 rubric_q_str: str) -> DataFrame:
  
  essay_text = clean_essay(essay_text, stand_ins)
  questions_str = rubric_q_str.replace("[PROMPT_TOPIC]", topic.lower())
  
  print("\nQuerying GPT-4-mini on essay that begins:")
  print("\"" + essay_text[:80] + "...\"")
  completion = GPT_CLIENT.chat.completions.create(
    model="gpt-4o-mini",
    messages=[
      {
        "role": "system", 
        "content": "You are an elementary school teacher being asked to evaluate an essay on the topic of" 
          + topic + ". "
          + "The essay is the following text, enclosed in triple quotes (\"\"\"): \n\"\"\"\n"
          + essay_text + "\n\"\"\"\nThe text enclosed in triple quotes (\"\"\") "
          + "will be referred to as $ESSAY_TEXT in instructions."
      },
      {
        "role": "user", 
        "content": "Answer each of the following questions about $ESSAY_TEXT with either a \"yes\" or a \"no\". "
          + "Return your answers as a JSON-formatted response, with the following questions as the names, "
          + "and your answers as the values.\n\n"
          + questions_str
      }
    ],
    temperature=0.5,   # for consistency
    n=1
  )
  
  # JSON-format string -> dict -> list of dicts where each element is a row -> DataFrame. Whew!
  print("Reformatting response...")
  response   = completion.choices[0].message.content
  response   = response[8:-4]     # GPT adds "```json" at the beginning and "```" at the end of JSON responses
  resp_dict  = json.loads(response)
  resp_dict  = [{"Aspect_Questions": key, "GPT_Eval": value} for key, value in resp_dict.items()]
  resp_df    = json_normalize(resp_dict)
  return resp_df


# Finds which score category the response best fits,
# using the category with the maximum "yes" responses from GPT
def determine_grade(rubric:   DataFrame, 
                    gpt_resp: DataFrame) -> int:

  joined_df = rubric.merge(gpt_resp, on="Aspect_Questions")
  yes_ratios = {
      1: 0.0,
      2: 0.0,
      3: 0.0,
      4: 0.0,
      5: 0.0,
      6: 0.0
    }
    
  for s in range(1,7):
      score_s_qs = joined_df[joined_df.Score_Category == s]
      
      # percentage of yeses
      yes_ratios[s]  = score_s_qs[score_s_qs.GPT_Eval == "yes"].count().iloc[-1] 
      yes_ratios[s] /= score_s_qs["GPT_Eval"].size

  best_fit_score = 0
  max_yes_ratio  = 0
  for score, yes_ratio in yes_ratios.items():
      if (yes_ratio > max_yes_ratio):
          max_yes_ratio = yes_ratio
          best_fit_score = score
      
  return best_fit_score
    
    

# writes grades to DB
def update_grade(assignment_ID: str,
                 student_ID: str,
                 grades: list):
  
  print("updating grades on DB for assignemnt %s by student %s..." % (student_ID, assignment_ID))
  grades.append(assignment_ID)
  grades.append(student_ID)

  DB_CURSOR.execute("""
                    UPDATE StudentAnswers
                    SET
                      LLMScore1 = :1,
                      LLMScore2 = :2,
                      LLMScore3 = :3,
                      LLMScore4 = :4,
                      LLMScore5 = :5,
                      LLMScore6 = :6,
                      LLMScore7 = :7
                    WHERE
                      AssignmentID = :8
                      AND StudentID = :9
                    """,
                    parameters=grades)


# TODO: CLI parsing to get: 
# 	- rubric file
#		- write-to-db flag (print to local file if false)
# 	- evaluate model performance boolean (optional)

def main():

  a_ID = "135"
  rubric_table = read_csv("./CSV-tables/rubric_indep_questions.csv")
  essays_df    = get_essays(a_ID)
  #essays_df   = read_csv("./CSV-tables/studentanswers-scores-test.csv") 
  stand_ins    = read_csv("./MiscFiles/name-stand-ins.csv")   # Given reasonable values to anonymizations
  rubric_questions_str = "\n".join(rubric_table["Aspect_Questions"].values)
  
	# for loop over assignments here
  for idx, submission in essays_df.iterrows():
    grades = []
    # recall that, unlike native Python, the end index IS included in pd.Series.loc[] slices
    topics = submission.loc["PromptTitle1":"PromptTitle7"] 
    essays = submission.loc["Answer1"     :"Answer7"     ]

    for topic, essay in zip(topics, essays):
      resp_df = get_GPT_eval(topic, essay, stand_ins, rubric_questions_str) #read_csv("./GPT-demo-resp.csv")
      grades.append(determine_grade(rubric_table, resp_df))
    
    update_grade(a_ID, submission.iloc[0], grades)
      
  DB_CONNECTION.commit()
  
  print("\nEssay grading complete!\n")
      
  
  
if (__name__ == "__main__"):
  main()