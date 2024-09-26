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
                                 "full_text", 
                                 "holistic_essay_score" 
                                ]].sample(
                                    frac=0.2,
                                    replace=False, 
                                    random_state=RANDOM_STATE
                                    )
assignments_df  = read_csv("../CSV-tables/assignments-table.csv")
registration_df = read_csv("../CSV-tables/registration-table.csv")

print("Quering tables...")
full_table = sqldf('''
                    SELECT a.AssignmentID, r.StudentID,
                        PromptTitle1, PromptTitle2, PromptTitle3, 
                        PromptTitle4, PromptTitle5, PromptTitle6, PromptTitle7
                    FROM assignments_df a INNER JOIN registration_df r
                        ON a.SectionID = r.sectionID
                   ''', 
                   globals()
                   )

rename_map_ids={"PromptTitle1": "Answer1_id", 
                "PromptTitle2": "Answer2_id", 
                "PromptTitle3": "Answer3_id", 
                "PromptTitle4": "Answer4_id", 
                "PromptTitle5": "Answer5_id", 
                "PromptTitle6": "Answer6_id", 
                "PromptTitle7": "Answer7_id"
            }

answer_header={val:val[:-3]              for    (key,val) in           rename_map_ids.items() }
scores_header={val:"HumanScore"+str(i+1) for i, (key,val) in enumerate(rename_map_ids.items())}
full_table.rename(mapper=rename_map_ids,
                  axis=1,
                  inplace=True
                  )

print("Loading random essays...")

def select_topical_essay_id(prompt_name):
    essays_for_prompt = test_essays_df.loc[
        test_essays_df["prompt_name"].str.contains(
            "\"{0,3}"+prompt_name+"\"{0,3}"
            )
        ]
    random_essay = essays_for_prompt.sample(n=1)
    random_essay_id = random_essay.index[0]
    return str(random_essay_id)

def get_essay_by_id(essay_id):
    return test_essays_df.loc[essay_id, "full_text"]

def get_score_by_id(essay_id):
    return test_essays_df.loc[essay_id, "holistic_essay_score"]

essay_id_columns = full_table[rename_map_ids.values()].map(select_topical_essay_id)
essay_columns    = essay_id_columns.map(get_essay_by_id)
score_columns    = essay_id_columns.map(get_score_by_id)

essay_columns.rename(mapper=answer_header, axis=1, inplace=True)
score_columns.rename(mapper=scores_header, axis=1, inplace=True)

pred_scores     = DataFrame(np.zeros((essay_columns.shape[0],7)), 
                            columns=["pred_Score1", "pred_Score2", 
                                        "pred_Score3", "pred_Score4", 
                                        "pred_Score5", "pred_Score6", 
                                        "pred_Score7"],
                            dtype=str)
pred_scores     = pred_scores.replace("0.0", "")

full_table      = full_table.drop(columns=rename_map_ids.values())
full_table      = full_table.join(essay_id_columns)
full_table      = full_table.join(essay_columns)
full_table      = full_table.join(score_columns)
full_table      = full_table.join(pred_scores)

#full_table.to_csv("../CSV-tables/studentanswers-table.csv", index=False)
full_table.to_csv("../CSV-tables/studentanswers-scores-test.csv", index=False)
print("Process complete!")

