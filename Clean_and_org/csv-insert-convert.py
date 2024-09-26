# script to convert csv files to Oracle-standard INSERT statements

print("Converting CSVs to SQL INSERT statements... ", end="")

from pandas import read_csv
import re
csvNames   = ["student-table.csv", 
              "professors-table.csv", 
              "courses-table.csv", 
              "assignmenttype-table.csv", 
              "prompts-table.csv",
              "sections-table.csv", 
              "registration-table.csv", 
              "assignments-table.csv",
              "studentanswers-table.csv"
              ]

tableNames = ["Students", 
              "Professors", 
              "Courses", 
              "AssignmentTypes", 
              "Prompts",
              "Sections", 
              "Registration",
              "Assignments",
              "StudentAnswers"
              ]

date_re = re.compile('\\d{2}/\\d{2}/\\d{4}\\s\\d{2}:\\d{2}\\s[AP]M')


for i, csv_file in enumerate(csvNames):
    with open("../CSV-tables/"+csv_file) as table_reader:
        table_read = read_csv("../CSV-tables/"+csv_file)
        
    with open("../DBSetupScripts/"+str(i+1)+"_insert"+tableNames[i]+"Data.sql", "w") as insert_writer:
        
        insert_writer.write("SET ESCAPE ON\n")    # makes sure escapes on ampersands take
        insert_writer.write("SET SERVEROUTPUT ON\n\n")
        cout_string  = "BEGIN \n\tDBMS_OUTPUT.ENABLE;"
        cout_string += "\n\tDBMS_OUTPUT.PUT_LINE(\'Inserting into table: "
        cout_string += tableNames[i]+ "\');\nEND;\n/\n"
        insert_writer.write(cout_string)
        
        header = ""
        for col in table_read.columns:
            header += str(col) + ","
        header = header[:-1]
            
        for j, row in table_read.iterrows():
            
            insert_row        = ""
            append_stmts      = "" 
            col_locator_pairs = {}
            concat_var_count  = 1 
            vars_declared     = False  
            pk_col            = []
            pk_value          = []
            for column, cell in row.items():
                cell = str(cell)
                current_col = column
                
                if (table_read.columns.get_loc(column) == 0):
                    pk_col   = [current_col]
                    pk_value = [cell]
                
                # these tables have composite PKs
                if (tableNames[i] in ["Registration", "StudentAnswers"] 
                    and table_read.columns.get_loc(column) == 1):
                    pk_col   += [current_col]
                    pk_value += [cell]
                
                if (cell == "nan"):
                    insert_row += "NULL,"
                    continue
                
                # to catch dates
                if (date_re.match(cell)):     
                    insert_row += "TO_DATE(\'" + cell + "\',\'MM/DD/YYYY HH:MI AM\'),"
                    continue
                
                # Catches strings with digits and/or letters, but not digits alone
                if (not cell.isdigit()):                    
                    cell = cell.replace("'", "''")                  # escape single quotes
                    cell = cell.replace("\"", "''")                 # replace double quotes
                    cell = cell.replace("&", "\\&")                 # escape ampersands
                    
                    # break up long lines into smaller chunks, using  
                    # concatenated string variables
                    chunk_size = 1000
                    
                    if (len(cell) > chunk_size):            
                        
                        if (not vars_declared): 
                            insert_writer.write("\nDECLARE\n")
                        vars_declared = True
                        clob_var = "clob_loc"+ str(concat_var_count)
                        insert_writer.write("\t" + clob_var +" CLOB;\n")
                        
                        chunk_start  = 0
                        chunk_stop   = chunk_size
                        part_var_count  = 1
                        while (chunk_stop < len(cell)):
                            
                            while (cell[chunk_stop] in ["'", "\""]):            # don't isolate escape chars
                                chunk_stop += 5
                                
                            chunk_var    = "\tclob"+str(concat_var_count)+"_pt"+str(part_var_count)
                            chunk_var   += " CLOB := '" + cell[chunk_start:chunk_stop] + "';\n"
                            insert_writer.write(chunk_var)
                            
                            chunk_start  = chunk_stop
                            chunk_stop  += chunk_size
                            part_var_count += 1
                            
                        # get the last part of the long cell
                        chunk_var  = "\tclob"+str(concat_var_count)+"_pt"+str(part_var_count)
                        chunk_var += " CLOB := '" + cell[chunk_start:] + "';\n"   
                        insert_writer.write(chunk_var)
                        
                        # concatenate the variables together
                        for v in range(part_var_count):
                            append_stmts += "\tDBMS_LOB.APPEND(" + clob_var + ", "
                            append_stmts += "clob"+str(concat_var_count)+"_pt"+ str(v+1)+");\n"
                        append_stmts += "\n"
                        
                        col_locator_pairs.update({current_col: clob_var})
                        insert_row += "EMPTY_CLOB(),"
                        concat_var_count += 1
                    else:         
                        insert_row += "'" + cell + "'," 
                else:
                    insert_row += cell + ","                
            
            # Assembling the row data        
            insert_row = insert_row[:-1]                    # trim off final comma
            
            insert_writer.write("BEGIN\n")
            insert_stmt = "\n\tINSERT INTO "+tableNames[i]+"\n\t("+header+")\n\tVALUES\n\t("+insert_row+")"
            insert_writer.write(insert_stmt)
    
            if (vars_declared):
                return_stmt  = "\n\tRETURNING "
                return_stmt += ", ".join(col_locator_pairs.keys())
                return_stmt += " INTO "
                return_stmt += ", ".join(col_locator_pairs.values())
                insert_writer.write(return_stmt + ";\n\n")
            else:
                insert_writer.write(";\n")
            
            insert_writer.write(append_stmts)
            
            if (vars_declared):
                update_stmt  = "\n\tUPDATE " + tableNames[i] + "\n"
                update_stmt += "\tSET\n"
                
                for col, var in col_locator_pairs.items():
                    update_stmt += "\t\t" + col + " = " + var + ",\n"
                
                update_stmt = update_stmt[:-2]                          # trim off comma and newline
                update_stmt += "\n\tWHERE\n\t\t"
                
                for p, pk in enumerate(pk_col):
                    if (p > 0):
                        update_stmt += "\t\tAND "
                        
                    update_stmt += pk + " = "
                    
                    if (pk_value[p].isdigit()):
                        update_stmt += pk_value[p] + "\n"
                    else:
                        update_stmt += "'" + pk_value[p] + "'\n"
                
                update_stmt = update_stmt[:-1]
                update_stmt += ";\n"
                insert_writer.write(update_stmt)
            
            insert_writer.write("END;\n/\n")
        
        insert_writer.write("\nCOMMIT;\n")
            
print("Done!")