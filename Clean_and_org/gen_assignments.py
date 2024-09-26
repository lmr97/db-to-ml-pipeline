# Each section has 7 assignments, each of which is a randomly picked prompt
# from the prompt list, consisting of:
#   - 3 Homework assignments
#   - 2 quizzes
#   - 1 Exam (a midterm)
#   - 1 Final exam
# For simplicity and to ensure distinctness of assignments, 
# all assignments will have 7 questions (15 choose 7 == 6,435).

print("\nLoading libraries...")

from random import randint, sample
from pandas import read_csv
from datetime import datetime, timedelta

# programmatically collected from original data file
prompts = {
    "Phones and driving":                    "Today the majority of humans own and operate cell phones on a daily basis. In essay form, explain if drivers should or should not be able to use cell phones in any capacity while operating a vehicle.",
    "Car-free cities":                       "Write an explanatory essay to inform fellow citizens about the advantages of limiting car usage. Your essay must be based on ideas and information that can be found in the passage set. Manage your time carefully so that you can read the passages; plan your response; write your response; and revise and edit your response. Be sure to use evidence from multiple sources; and avoid overly relying on one source. Your response should be in the form of a multiparagraph essay. Write your essay in the space provided.",
    "Summer projects":                       "Some schools require students to complete summer projects to assure they continue learning during their break. Should these summer projects be teacher-designed or student-designed? Take a position on this question. Support your response with reasons and specific examples.",
    "A Cowboy Who Rode the Waves":           "You have just read the article, 'A Cowboy Who Rode the Waves.' Luke's participation in the Seagoing Cowboys program allowed him to experience adventures and visit many unique places. Using information from the article, write an argument from Luke's point of view convincing others to participate in the Seagoing Cowboys program. Be sure to include: reasons to join the program; details from the article to support Luke's claims; an introduction, a body, and a conclusion to your essay.",
    "Mandatory extracurricular activities":  "Your principal has decided that all students must participate in at least one extracurricular activity. For example, students could participate in sports, work on the yearbook, or serve on the student council. Do you agree or disagree with this decision? Use specific details and examples to convince others to support your position. ",
    "Exploring Venus":                       "In 'The Challenge of Exploring Venus,' the author suggests studying Venus is a worthy pursuit despite the dangers it presents. Using details from the article, write an essay evaluating how well the author supports this idea. Be sure to include: a claim that evaluates how well the author supports the idea that studying Venus is a worthy pursuit despite the dangers; an explanation of the evidence from the article that supports your claim; an introduction, a body, and a conclusion to your essay.",
    "Facial action coding system":           "In the article 'Making Mona Lisa Smile,' the author describes how a new technology called the Facial Action Coding System enables computers to identify human emotions. Using details from the article, write an essay arguing whether the use of this technology to read the emotional expressions of students in a classroom is valuable.",
    "The Face on Mars":                      "You have read the article 'Unmasking the Face on Mars.' Imagine you are a scientist at NASA discussing the Face with someone who thinks it was created by aliens. Using information in the article, write an argumentative essay to convince someone that the Face is just a natural landform.Be sure to include: claims to support your argument that the Face is a natural landform; evidence from the article to support your claims; an introduction, a body, and a conclusion to your argumentative essay.",
    "Community service":                     "Some of your friends perform community service. For example, some tutor elementary school children and others clean up litter. They think helping the community is very important. But other friends of yours think community service takes too much time away from what they need or want to do.  Your principal is deciding whether to require all students to perform community service.  Write a letter to your principal in which you take a position on whether students should be required to perform community service. Support your position with examples.",
    "Grades for extracurricular activities": "Your principal is considering changing school policy so that students may not participate in sports or other activities unless they have at least a grade B average. Many students have a grade C average.  She would like to hear the students' views on this possible policy change. Write a letter to your principal arguing for or against requiring at least a grade B average to participate in sports or other activities. Be sure to support your arguments with specific reasons.",
    "Driverless cars":                       "In the article 'Driverless Cars are Coming,' the author presents both positive and negative aspects of driverless cars. Using details from the article, create an argument for or against the development of these cars.  Be sure to include: your position on driverless cars; appropriate details from the article that support your position; an introduction, a body, and a conclusion to your argumentative essay.",
    "Does the electoral college work?":      "Write a letter to your state senator in which you argue in favor of keeping the Electoral College or changing to election by popular vote for the president of the United States. Use the information from the texts in your essay. Manage your time carefully so that you can read the passages; plan your response; write your response; and revise and edit your response. Be sure to include a claim; address counterclaims; use evidence from multiple sources; and avoid overly relying on one source. Your response should be in the form of a multiparagraph essay. Write your response in the space provided.",
    "Cell phones at school":                 "Your principal is reconsidering the school's cell phone policy. She is considering two possible policies:  Policy 1: Allow students to bring phones to school and use them during lunch periods and other free times, as long as the phones are turned off during class time.  Policy 2: Do not allow students to have phones at school at all. Write a letter to your principal convincing her which policy you believe is better. Support your position with specific reasons.",
    "Distance learning":                     "Some schools offer distance learning as an option for students to attend classes from home by way of online or video conferencing. Do you think students would benefit from being able to attend classes from home? Take a position on this issue. Support your response with reasons and examples.",
    "Seeking multiple opinions":             "When people ask for advice, they sometimes talk to more than one person. Explain why seeking multiple opinions can help someone make a better choice. Use specific details and examples in your response."
}

prompt_titles = list(prompts.keys())
assign_types = ["H", "Q", "H", "Q", "E", "H", "F"]

# needed to generate reasonable start times
sections_df = read_csv("../CSV-tables/sections-table.csv", 
                       index_col="SectionID")
section_IDs = sections_df.index
assign_IDs = sample(range(100,999), len(section_IDs)*len(assign_types))  # gets unique IDs

print("Starting assignment generation.")

with open("../CSV-tables/assignments-table.csv", "w") as asgn_writer:
    
    # write header
    asgn_writer.write("AssignmentID,DueDate,AssignmentTypeID,SectionID")
    for i in range(7):
        asgn_writer.write(",PromptTitle"+str(i+1))
    
    for i in range(7):
        asgn_writer.write(",PossiblePoints"+str(i+1))
    
    asgn_writer.write("\n")
    
    
    # write the rest
    assignment_line = ""
    used_rands = []
    
    for section in section_IDs:
        section_start   = sections_df.at[section,"StartTime"]
        section_start   = datetime.strptime(section_start, '%m/%d/%Y %I:%M %p')
        due_date        = section_start.replace(hour=23, minute=59, second=59)
        assign_interval = timedelta(days=14)
        
        for a_type in assign_types:
            
            # AssignmentID
            assignment_line = str(assign_IDs.pop()) + ","
            
            # DueDate
            due_date += assign_interval
            assignment_line += (due_date).strftime('%m/%d/%Y %I:%M %p')+","
            
            # AssignmentTypeID
            assignment_line += a_type+","
            
            # SectionID
            assignment_line += str(section)+","
            
            # Useful for the next two categories
            selected_prompt_titles = sample(prompt_titles, k=7)
            
            # PromptTitle1-7
            for prompt in selected_prompt_titles:
                assignment_line += "\""+prompt+"\","
            
            # PossiblePoints1-7
            pts_possible = 0
            match a_type:
                case "H": pts_possible = 10
                case "Q": pts_possible = 30
                case "E": pts_possible = 50
                case "F": pts_possible = 100
                case   _: pass
            
            per_question_pts = pts_possible // 7
            remainder        = pts_possible %  7
            for i in range(7):
                if (i == 6):
                    assignment_line += str(per_question_pts+remainder)
                else:
                    assignment_line += str(per_question_pts)+","
            
            asgn_writer.write(assignment_line+"\n")

print("\033[92mAssignment generation complete!\n")
            
            