# Script to perform the pre-processing necessary to get the original
# CSV into a useable file.

print("Cleaning original CSV file...")
# Data cleaning: putting essays all on one line
with open("persuade_2.0_human_scores.csv", "r") as messy_file_reader:
    
    messy_file = messy_file_reader.readlines()
    
    
def is_valid_hex(candidate: str):
    candidate = candidate.lower()
    for char in candidate:
        if (not char.isdigit() and char not in ["a", "b", "c", "d", "e"]):
            return False
    
    return True

with open("persuade_2.0_clean.csv", "w") as writer:
    # consilidate lines (lines that should be single in the file are 
    # broken up by the newline in the essays)
    writer.writelines(messy_file[0])                             # start with header...
    messy_file = messy_file[1:]                                  # ...then take it off
    print_following = False
    consolidated_line = ""
    for i, line in enumerate(messy_file):
        
        text_only = line.replace("\n", " ")
        
        # if a line is no more than a newline, disregard it
        if (text_only == " "):
            continue
        
        consolidated_line += text_only
        try:
            if ("E+" in messy_file[i+1][:12]):                   # sometimes the file messes up and renders the hex in scientific
                writer.writelines(consolidated_line+"\n")
                consolidated_line = "" 
            else:
                conv_int = int(messy_file[i+1][:10],16)          # Keys, which begin rows, are always 10-12 digit hex numbers
                if (conv_int > 1000000):                         # some lines start with small ints like 2, which convert to hex
                    writer.writelines(consolidated_line+"\n")    # if conversion from next line is successful, the line has all info
                    consolidated_line = ""                       # (and reset the line consolidating variable, of course)
        except (ValueError):                                     # if not, then either there's more to the line, or the file
            pass                                                 # finished. If at EOF, add the consolidated line. Otherwise,
        except (IndexError):                                     # do nothing (concats are done at the beginning of the loop)
            writer.writelines(consolidated_line)

print("\033[92mCleanup complete!")