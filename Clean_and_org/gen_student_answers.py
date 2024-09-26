# A script to generate a set of student answers given a test subset of the data

# AssignmentID
# StudentID
# Answer1-7
# Score1-7

print("Loading libraries...")
from pandas import read_csv, DataFrame
import numpy as np
from pandasql import sqldf 

RANDOM_STATE = 38

# Tables needed (CSVs):
# - test data (essay reponses)
# - assignments
# - registration

print("Loading data...")
all_essays_df   = read_csv("./persuade_2.0_clean.csv", index_col="essay_id_comp")
test_essays_df  = all_essays_df[["prompt_name",
                                 "full_text"
                                ]].sample(
                                    frac=0.2,
                                    replace=False, 
                                    random_state=RANDOM_STATE
                                    )
assignments_df  = read_csv("../CSV-tables/assignments-table.csv")
registration_df = read_csv("../CSV-tables/registration-table.csv")

print("Querying tables...")
full_table = sqldf('''
                    SELECT a.AssignmentID, r.StudentID,
                        PromptTitle1, PromptTitle2, PromptTitle3, 
                        PromptTitle4, PromptTitle5, PromptTitle6, PromptTitle7
                    FROM assignments_df a INNER JOIN registration_df r
                        ON a.SectionID = r.sectionID
                   ''', 
                   globals()
                   )



rename_map_ids={"PromptTitle1": "Answer1", 
                "PromptTitle2": "Answer2", 
                "PromptTitle3": "Answer3", 
                "PromptTitle4": "Answer4", 
                "PromptTitle5": "Answer5", 
                "PromptTitle6": "Answer6", 
                "PromptTitle7": "Answer7"
            }


full_table.rename(mapper=rename_map_ids,
                  axis=1,
                  inplace=True
                  )

print("Loading random essays...")

def select_topical_essay(prompt_name):
    
    essays_for_prompt = test_essays_df.loc[
        test_essays_df["prompt_name"].str.contains(
            "\"{0,3}"+prompt_name+"\"{0,3}"
            )
        ]

    random_essay = essays_for_prompt.sample(n=1)
    random_essay = random_essay.iat[0, 1]
    
    return str(random_essay)



essay_columns = full_table[rename_map_ids.values()].map(select_topical_essay)

pred_scores   = DataFrame(np.zeros((essay_columns.shape[0],7)), 
                          columns=["LLMScore1", "LLMScore2", 
                                   "LLMScore3", "LLMScore4", 
                                   "LLMScore5", "LLMScore6", 
                                   "LLMScore7"],
                          dtype=str)
pred_scores   = pred_scores.replace("0.0", "")

full_table    = full_table.drop(columns=rename_map_ids.values())
full_table    = full_table.join(essay_columns)
full_table    = full_table.join(pred_scores)


full_table.to_csv("../CSV-tables/studentanswers-table.csv", index=False)
print("Process complete!")