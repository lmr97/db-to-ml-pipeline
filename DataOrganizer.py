from pandas import read_csv, read_sql, DataFrame
import oracledb

"""
This object established a connection to a given database on initialization.
Since it's an importable object, it allows the connection to be used
anywhere the object is defined and the connection is valid.

The constructor defaults to the Oracle-style quick-connect string 
for the included database, but could connect to others.
"""
class DataOrganizer:
  
  def __init__(self, conn_string="system/password1234@127.0.0.1/XE"):
    
    # Let the error propigate. if there's no connection, there should be no object. 
    self.connection = oracledb.connect(conn_string)
    self.cursor = self.connection.cursor() 
    self.stand_ins = read_csv("./Clean_and_org/name-stand-ins.csv") 
    
  

  """
  Gets all essays by assignmentID, with prompts included, from the database. 
  Returns a DataFrame, where all the text is a oracledb.LOB object.
  For conversion of text to `str` objects, use the `clean_essay()` method.

  NOTE: This method returns `None` if the query is not valid.
  """
  def get_essays(self, assignment_ID: str) -> DataFrame:
    
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
            """ % col_name_str  # fine to not parametrize because it's not user-facing
    try:
      essay_table = read_sql(query, 
                            self.connection, 
                            params={"a_ID": assignment_ID}
                            )
    except:
      print("Invalid assignmentID {assignmentID}, returning `None`")
      return None
    
    return essay_table

  
  """
  Converts one CLOB from the database into a string, and cleans it,
  adding pre-chosen values for anonymizing text like `STUDENT_NAME`
  (for replacement values, see `Clean_and_org/name-stand-ins.csv`).
  
  Use the pandas DataFrame method pandas' metho
  """
  def clean_essay(self, essay_text: oracledb.LOB) -> str:

    # text is received as a CLOB, extract data inside to string
    essay_text = essay_text.read()
    
    # double and triple quotes get counted as grammar errors
    essay_text = essay_text.replace("\"\"\"", "\'")
    essay_text = essay_text.replace("\"\"",   "\'")     

    # insert reasonable values for anonymizations
    # idx is simply there to catch the first part of the tuple
    for idx, replacement in self.stand_ins.iterrows():
      essay_text = essay_text.replace(replacement["Variable"],
                                      replacement["Stand-in_Value"]
                                      )

    return essay_text

  """
  Writes given grades to DB, by assignment and studentID.
  """
  def update_grade(self, 
                   assignment_ID: str,
                   student_ID: str,
                   grades: list):
    
    grades.append(assignment_ID)
    grades.append(student_ID)

    self.cursor.execute("""
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
    
    self.connection.commit()