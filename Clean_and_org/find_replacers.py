# script for getting a list of all the name replacements 
# (like STUDENT_NAME) in the source text file

import re

names_re = re.compile('[A-Z]*_NAME')

all_essays = []
name_replacers = []
with open("./persuade_2.0_clean.csv",'r') as all_essays_file:
    all_essays = all_essays_file.readlines()
    
for text_line in all_essays:
    matches = names_re.findall(text_line)

    if (matches):
        name_replacers += matches

name_replacers = list(set(name_replacers))

with open("./proper-name-replacers.csv", "w") as writer:
    for replacer in name_replacers:
        writer.write(replacer+"\n")
    