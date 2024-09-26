---------------------------------------------------
-- Drop Table section
---------------------------------------------------

-- drop tables with FKs first...
DROP TABLE StudentAnswers;  
DROP TABLE Assignments;
DROP TABLE Registration;
DROP TABLE Sections;

-- ...then tables without FKs
DROP TABLE Prompts;
DROP TABLE AssignmentTypes;
DROP TABLE Courses;
DROP TABLE Professors;
DROP TABLE Students;

---------------------------------------------------
-- Create Table section
---------------------------------------------------

CREATE TABLE Students
(
    StudentID  CHAR(3),
    LastName   VARCHAR(120) CONSTRAINT StudentFirstNameRequired NOT NULL,
    FirstName  VARCHAR(120) CONSTRAINT StudentLastNameRequired  NOT NULL,
    MiddleName VARCHAR(120),
    CONSTRAINT PKStudentID PRIMARY KEY (StudentID)
);


CREATE TABLE Professors
(
    ProfID    CHAR(3),
    LastName  VARCHAR(120) CONSTRAINT ProfFirstNameRequired NOT NULL,
    FirstName VARCHAR(120) CONSTRAINT ProfLastNameRequired  NOT NULL,
    CONSTRAINT PKProfID PRIMARY KEY (ProfID)
);


CREATE TABLE Courses
(
    CourseID     CHAR(3),
    DeptCode     CHAR(4)   CONSTRAINT DeptCodeRequired  NOT NULL,
    CourseNumber CHAR(4)   CONSTRAINT CourseNumRequired NOT NULL,
    CourseTitle  VARCHAR(120),
    CONSTRAINT PKCourseID PRIMARY KEY (CourseID)
);


CREATE TABLE AssignmentTypes
(
    AssignmentTypeID CHAR(1)     NOT NULL,
    AssignmentType   VARCHAR(20) NOT NULL,
    CONSTRAINT PKAssignmentTypeID PRIMARY KEY (AssignmentTypeID)
);

CREATE TABLE Prompts
(
    Title       VARCHAR(100) CONSTRAINT TitleRequired      NOT NULL,
    Body        VARCHAR(650) CONSTRAINT PromptBodyRequired NOT NULL,
    SourceBased NUMBER(1),    
    CONSTRAINT OnlyBinaryDigits CHECK (SourceBased = 1 OR SourceBased = 0), 
    CONSTRAINT PKPromptTitle    PRIMARY KEY (Title)
);

CREATE TABLE Sections
(
    SectionID CHAR(4),
    CourseID  CHAR(3) CONSTRAINT CourseIDRequired NOT NULL,
    ProfID    CHAR(3) CONSTRAINT ProfIDRequired   NOT NULL,
    StartTime DATE,
    CONSTRAINT PKSectionID PRIMARY KEY (SectionID),
    CONSTRAINT FKCourseID  FOREIGN KEY (CourseID) REFERENCES Courses    (CourseID),
    CONSTRAINT FKProfID    FOREIGN KEY (ProfID)   REFERENCES Professors (ProfID)
);


CREATE TABLE Registration
(
    StudentID CHAR(3),
    SectionID CHAR(4),
    CONSTRAINT PKRegistration   PRIMARY KEY (StudentID, SectionID),
    CONSTRAINT RegisFKStudentID FOREIGN KEY (StudentID) REFERENCES Students (StudentID),
    CONSTRAINT RegisFKSectionID FOREIGN KEY (SectionID) REFERENCES Sections (SectionID)
);


-- This includes all work assigned to students: homework, quizzes, and exams.
-- Built under the assumption that all assignments will have no more than 10 questions,
-- which they won't for the example data. If longer assignments were required, 
-- the table's columns can be extended.
CREATE TABLE Assignments
(
    AssignmentID     CHAR(3),
    DueDate          DATE          CONSTRAINT DueDateRequired          NOT NULL,
    AssignmentTypeID CHAR(1)       CONSTRAINT AssignmentIDRequired     NOT NULL,
    SectionID        CHAR(4)       CONSTRAINT SectionIDRequired        NOT NULL,
    PromptTitle1     VARCHAR(100)  CONSTRAINT AtLeast1TitleRequired    NOT NULL,
    PromptTitle2     VARCHAR(100),
    PromptTitle3     VARCHAR(100),
    PromptTitle4     VARCHAR(100),
    PromptTitle5     VARCHAR(100),
    PromptTitle6     VARCHAR(100),
    PromptTitle7     VARCHAR(100),
    PossiblePoints1  NUMBER(2,0)   CONSTRAINT AtLeast1PossPtsRequired  NOT NULL,
    PossiblePoints2  NUMBER(2,0),
    PossiblePoints3  NUMBER(2,0),
    PossiblePoints4  NUMBER(2,0),
    PossiblePoints5  NUMBER(2,0),
    PossiblePoints6  NUMBER(2,0),
    PossiblePoints7  NUMBER(2,0),
    CONSTRAINT PKAssignmentID     PRIMARY KEY (AssignmentID),
    CONSTRAINT FKAssignemntTypeID FOREIGN KEY (AssignmentTypeID) REFERENCES AssignmentTypes (AssignmentTypeID),
    CONSTRAINT FKPromptTitle1     FOREIGN KEY (PromptTitle1)     REFERENCES Prompts         (Title),
    CONSTRAINT FKPromptTitle2     FOREIGN KEY (PromptTitle2)     REFERENCES Prompts         (Title),
    CONSTRAINT FKPromptTitle3     FOREIGN KEY (PromptTitle3)     REFERENCES Prompts         (Title),
    CONSTRAINT FKPromptTitle4     FOREIGN KEY (PromptTitle4)     REFERENCES Prompts         (Title),
    CONSTRAINT FKPromptTitle5     FOREIGN KEY (PromptTitle5)     REFERENCES Prompts         (Title),
    CONSTRAINT FKPromptTitle6     FOREIGN KEY (PromptTitle6)     REFERENCES Prompts         (Title),
    CONSTRAINT FKPromptTitle7     FOREIGN KEY (PromptTitle7)     REFERENCES Prompts         (Title),
    CONSTRAINT AsgmntFKSectionID  FOREIGN KEY (SectionID)        REFERENCES Sections        (SectionID)
);


CREATE TABLE StudentAnswers
(
    AssignmentID  CHAR(3),
    StudentID     CHAR(3),
    Answer1       CLOB, 
    Answer2       CLOB,
    Answer3       CLOB,
    Answer4       CLOB,
    Answer5       CLOB,
    Answer6       CLOB,
    Answer7       CLOB,
    LLMScore1  NUMBER(1,0),
    LLMScore2  NUMBER(1,0),
    LLMScore3  NUMBER(1,0),
    LLMScore4  NUMBER(1,0),
    LLMScore5  NUMBER(1,0),
    LLMScore6  NUMBER(1,0),
    LLMScore7  NUMBER(1,0),
    CONSTRAINT PKStudentAnswer PRIMARY KEY (StudentID, AssignmentID),
    CONSTRAINT AnsFKStudentID  FOREIGN KEY (StudentID)    REFERENCES Students    (StudentID),
    CONSTRAINT FKAssignmentID  FOREIGN KEY (AssignmentID) REFERENCES Assignments (AssignmentID)
);