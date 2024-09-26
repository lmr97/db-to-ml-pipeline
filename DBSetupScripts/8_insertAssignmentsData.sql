SET ESCAPE ON
SET SERVEROUTPUT ON

BEGIN 
	DBMS_OUTPUT.ENABLE;
	DBMS_OUTPUT.PUT_LINE('Inserting into table: Assignments');
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(869,TO_DATE('09/18/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'H',111,'Distance learning','Facial action coding system','The Face on Mars','Car-free cities','Does the electoral college work?','Phones and driving','Exploring Venus',1,1,1,1,1,1,4);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(195,TO_DATE('10/02/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'Q',111,'Phones and driving','The Face on Mars','Seeking multiple opinions','Distance learning','Exploring Venus','Does the electoral college work?','Car-free cities',4,4,4,4,4,4,6);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(556,TO_DATE('10/16/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'H',111,'The Face on Mars','Phones and driving','Grades for extracurricular activities','Mandatory extracurricular activities','Distance learning','Facial action coding system','Seeking multiple opinions',1,1,1,1,1,1,4);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(649,TO_DATE('10/30/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'Q',111,'Car-free cities','Mandatory extracurricular activities','Driverless cars','Exploring Venus','The Face on Mars','Phones and driving','A Cowboy Who Rode the Waves',4,4,4,4,4,4,6);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(244,TO_DATE('11/13/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'E',111,'Car-free cities','The Face on Mars','Seeking multiple opinions','Does the electoral college work?','Facial action coding system','Phones and driving','Mandatory extracurricular activities',7,7,7,7,7,7,8);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(874,TO_DATE('11/27/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'H',111,'Distance learning','Cell phones at school','Does the electoral college work?','Community service','Summer projects','A Cowboy Who Rode the Waves','Exploring Venus',1,1,1,1,1,1,4);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(765,TO_DATE('12/11/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'F',111,'Phones and driving','Does the electoral college work?','A Cowboy Who Rode the Waves','Driverless cars','Seeking multiple opinions','Facial action coding system','Distance learning',14,14,14,14,14,14,16);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(852,TO_DATE('09/18/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'H',112,'Distance learning','A Cowboy Who Rode the Waves','Does the electoral college work?','Community service','Cell phones at school','Facial action coding system','Driverless cars',1,1,1,1,1,1,4);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(225,TO_DATE('10/02/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'Q',112,'Cell phones at school','Car-free cities','Distance learning','Summer projects','Mandatory extracurricular activities','Does the electoral college work?','Driverless cars',4,4,4,4,4,4,6);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(645,TO_DATE('10/16/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'H',112,'Driverless cars','Car-free cities','Does the electoral college work?','Grades for extracurricular activities','Community service','Cell phones at school','Distance learning',1,1,1,1,1,1,4);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(983,TO_DATE('10/30/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'Q',112,'Seeking multiple opinions','Cell phones at school','Summer projects','Distance learning','Mandatory extracurricular activities','Exploring Venus','The Face on Mars',4,4,4,4,4,4,6);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(803,TO_DATE('11/13/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'E',112,'Summer projects','A Cowboy Who Rode the Waves','Does the electoral college work?','Facial action coding system','Distance learning','Car-free cities','Community service',7,7,7,7,7,7,8);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(586,TO_DATE('11/27/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'H',112,'Does the electoral college work?','Mandatory extracurricular activities','Car-free cities','Facial action coding system','Grades for extracurricular activities','Cell phones at school','Exploring Venus',1,1,1,1,1,1,4);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(704,TO_DATE('12/11/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'F',112,'Facial action coding system','Summer projects','Community service','Grades for extracurricular activities','Car-free cities','Does the electoral college work?','Seeking multiple opinions',14,14,14,14,14,14,16);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(135,TO_DATE('09/18/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'H',311,'Cell phones at school','Distance learning','Grades for extracurricular activities','Community service','Exploring Venus','Car-free cities','Driverless cars',1,1,1,1,1,1,4);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(129,TO_DATE('10/02/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'Q',311,'The Face on Mars','Cell phones at school','Grades for extracurricular activities','Phones and driving','A Cowboy Who Rode the Waves','Facial action coding system','Driverless cars',4,4,4,4,4,4,6);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(957,TO_DATE('10/16/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'H',311,'Phones and driving','Exploring Venus','Driverless cars','Cell phones at school','Community service','A Cowboy Who Rode the Waves','Does the electoral college work?',1,1,1,1,1,1,4);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(634,TO_DATE('10/30/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'Q',311,'Car-free cities','Exploring Venus','Mandatory extracurricular activities','Facial action coding system','Driverless cars','A Cowboy Who Rode the Waves','Phones and driving',4,4,4,4,4,4,6);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(615,TO_DATE('11/13/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'E',311,'Distance learning','Summer projects','The Face on Mars','A Cowboy Who Rode the Waves','Community service','Grades for extracurricular activities','Driverless cars',7,7,7,7,7,7,8);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(719,TO_DATE('11/27/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'H',311,'Car-free cities','Driverless cars','A Cowboy Who Rode the Waves','Phones and driving','Mandatory extracurricular activities','Facial action coding system','Community service',1,1,1,1,1,1,4);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(271,TO_DATE('12/11/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'F',311,'Phones and driving','The Face on Mars','Cell phones at school','Seeking multiple opinions','Community service','Facial action coding system','Distance learning',14,14,14,14,14,14,16);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(404,TO_DATE('09/18/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'H',809,'Grades for extracurricular activities','Facial action coding system','Community service','Cell phones at school','Driverless cars','Does the electoral college work?','Phones and driving',1,1,1,1,1,1,4);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(509,TO_DATE('10/02/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'Q',809,'Car-free cities','Exploring Venus','Driverless cars','Grades for extracurricular activities','Does the electoral college work?','Facial action coding system','Seeking multiple opinions',4,4,4,4,4,4,6);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(286,TO_DATE('10/16/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'H',809,'Does the electoral college work?','Exploring Venus','Driverless cars','A Cowboy Who Rode the Waves','The Face on Mars','Car-free cities','Distance learning',1,1,1,1,1,1,4);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(899,TO_DATE('10/30/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'Q',809,'Cell phones at school','Grades for extracurricular activities','Mandatory extracurricular activities','Driverless cars','Car-free cities','Distance learning','Facial action coding system',4,4,4,4,4,4,6);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(785,TO_DATE('11/13/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'E',809,'Facial action coding system','Does the electoral college work?','Seeking multiple opinions','Community service','Driverless cars','Exploring Venus','The Face on Mars',7,7,7,7,7,7,8);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(416,TO_DATE('11/27/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'H',809,'Seeking multiple opinions','Car-free cities','Summer projects','Community service','Cell phones at school','Exploring Venus','Does the electoral college work?',1,1,1,1,1,1,4);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(672,TO_DATE('12/11/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'F',809,'Seeking multiple opinions','Driverless cars','Does the electoral college work?','Summer projects','Facial action coding system','Exploring Venus','A Cowboy Who Rode the Waves',14,14,14,14,14,14,16);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(764,TO_DATE('09/18/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'H',812,'Does the electoral college work?','Exploring Venus','Car-free cities','Seeking multiple opinions','Mandatory extracurricular activities','Driverless cars','Phones and driving',1,1,1,1,1,1,4);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(161,TO_DATE('10/02/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'Q',812,'Grades for extracurricular activities','Summer projects','Driverless cars','Exploring Venus','Seeking multiple opinions','The Face on Mars','Mandatory extracurricular activities',4,4,4,4,4,4,6);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(914,TO_DATE('10/16/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'H',812,'Distance learning','Grades for extracurricular activities','A Cowboy Who Rode the Waves','Car-free cities','Cell phones at school','Summer projects','Phones and driving',1,1,1,1,1,1,4);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(272,TO_DATE('10/30/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'Q',812,'Summer projects','Driverless cars','A Cowboy Who Rode the Waves','Distance learning','Does the electoral college work?','Phones and driving','The Face on Mars',4,4,4,4,4,4,6);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(107,TO_DATE('11/13/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'E',812,'Distance learning','Summer projects','Seeking multiple opinions','Does the electoral college work?','The Face on Mars','Community service','Cell phones at school',7,7,7,7,7,7,8);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(367,TO_DATE('11/27/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'H',812,'Distance learning','Seeking multiple opinions','Does the electoral college work?','Community service','A Cowboy Who Rode the Waves','Cell phones at school','Car-free cities',1,1,1,1,1,1,4);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(400,TO_DATE('12/11/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'F',812,'Distance learning','Phones and driving','Grades for extracurricular activities','Mandatory extracurricular activities','Car-free cities','Facial action coding system','A Cowboy Who Rode the Waves',14,14,14,14,14,14,16);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(470,TO_DATE('09/18/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'H',291,'Distance learning','The Face on Mars','Grades for extracurricular activities','Facial action coding system','Exploring Venus','Community service','Driverless cars',1,1,1,1,1,1,4);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(311,TO_DATE('10/02/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'Q',291,'Does the electoral college work?','Cell phones at school','Driverless cars','Grades for extracurricular activities','Summer projects','Facial action coding system','Exploring Venus',4,4,4,4,4,4,6);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(126,TO_DATE('10/16/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'H',291,'Does the electoral college work?','Seeking multiple opinions','A Cowboy Who Rode the Waves','Community service','Grades for extracurricular activities','Mandatory extracurricular activities','Facial action coding system',1,1,1,1,1,1,4);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(846,TO_DATE('10/30/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'Q',291,'Exploring Venus','The Face on Mars','Distance learning','Car-free cities','Phones and driving','Community service','Mandatory extracurricular activities',4,4,4,4,4,4,6);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(963,TO_DATE('11/13/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'E',291,'Cell phones at school','Distance learning','Community service','Phones and driving','Grades for extracurricular activities','Car-free cities','Summer projects',7,7,7,7,7,7,8);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(364,TO_DATE('11/27/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'H',291,'Summer projects','Community service','Cell phones at school','Grades for extracurricular activities','Phones and driving','Exploring Venus','Car-free cities',1,1,1,1,1,1,4);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(876,TO_DATE('12/11/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'F',291,'Mandatory extracurricular activities','Seeking multiple opinions','A Cowboy Who Rode the Waves','Facial action coding system','Car-free cities','Does the electoral college work?','Summer projects',14,14,14,14,14,14,16);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(548,TO_DATE('09/18/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'H',834,'Phones and driving','Community service','Car-free cities','Cell phones at school','Seeking multiple opinions','Does the electoral college work?','Mandatory extracurricular activities',1,1,1,1,1,1,4);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(667,TO_DATE('10/02/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'Q',834,'Does the electoral college work?','The Face on Mars','Driverless cars','Mandatory extracurricular activities','Cell phones at school','Grades for extracurricular activities','Car-free cities',4,4,4,4,4,4,6);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(744,TO_DATE('10/16/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'H',834,'Mandatory extracurricular activities','Grades for extracurricular activities','Car-free cities','Phones and driving','A Cowboy Who Rode the Waves','Exploring Venus','Driverless cars',1,1,1,1,1,1,4);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(713,TO_DATE('10/30/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'Q',834,'A Cowboy Who Rode the Waves','Car-free cities','Phones and driving','Driverless cars','Seeking multiple opinions','The Face on Mars','Summer projects',4,4,4,4,4,4,6);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(212,TO_DATE('11/13/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'E',834,'Driverless cars','Summer projects','Community service','Distance learning','A Cowboy Who Rode the Waves','Does the electoral college work?','Car-free cities',7,7,7,7,7,7,8);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(186,TO_DATE('11/27/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'H',834,'Exploring Venus','Facial action coding system','Mandatory extracurricular activities','Distance learning','Car-free cities','Phones and driving','A Cowboy Who Rode the Waves',1,1,1,1,1,1,4);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(274,TO_DATE('12/11/2023 11:59 PM','MM/DD/YYYY HH:MI AM'),'F',834,'A Cowboy Who Rode the Waves','Phones and driving','Grades for extracurricular activities','Driverless cars','Exploring Venus','Seeking multiple opinions','Car-free cities',14,14,14,14,14,14,16);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(604,TO_DATE('01/22/2025 11:59 PM','MM/DD/YYYY HH:MI AM'),'H',909,'Mandatory extracurricular activities','A Cowboy Who Rode the Waves','Phones and driving','Summer projects','Grades for extracurricular activities','Distance learning','Seeking multiple opinions',1,1,1,1,1,1,4);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(397,TO_DATE('02/05/2025 11:59 PM','MM/DD/YYYY HH:MI AM'),'Q',909,'Cell phones at school','Does the electoral college work?','A Cowboy Who Rode the Waves','Facial action coding system','Exploring Venus','Driverless cars','Seeking multiple opinions',4,4,4,4,4,4,6);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(355,TO_DATE('02/19/2025 11:59 PM','MM/DD/YYYY HH:MI AM'),'H',909,'A Cowboy Who Rode the Waves','Summer projects','Grades for extracurricular activities','Facial action coding system','Phones and driving','Distance learning','Driverless cars',1,1,1,1,1,1,4);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(755,TO_DATE('03/05/2025 11:59 PM','MM/DD/YYYY HH:MI AM'),'Q',909,'Grades for extracurricular activities','Seeking multiple opinions','Facial action coding system','Distance learning','Car-free cities','Community service','Summer projects',4,4,4,4,4,4,6);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(519,TO_DATE('03/19/2025 11:59 PM','MM/DD/YYYY HH:MI AM'),'E',909,'Phones and driving','Summer projects','Community service','A Cowboy Who Rode the Waves','Grades for extracurricular activities','Does the electoral college work?','Exploring Venus',7,7,7,7,7,7,8);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(387,TO_DATE('04/02/2025 11:59 PM','MM/DD/YYYY HH:MI AM'),'H',909,'Phones and driving','Driverless cars','Summer projects','Mandatory extracurricular activities','Does the electoral college work?','Exploring Venus','The Face on Mars',1,1,1,1,1,1,4);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(423,TO_DATE('04/16/2025 11:59 PM','MM/DD/YYYY HH:MI AM'),'F',909,'Exploring Venus','Summer projects','Cell phones at school','Distance learning','A Cowboy Who Rode the Waves','Facial action coding system','Driverless cars',14,14,14,14,14,14,16);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(337,TO_DATE('01/22/2025 11:59 PM','MM/DD/YYYY HH:MI AM'),'H',805,'Phones and driving','Driverless cars','Exploring Venus','A Cowboy Who Rode the Waves','Mandatory extracurricular activities','Summer projects','Car-free cities',1,1,1,1,1,1,4);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(456,TO_DATE('02/05/2025 11:59 PM','MM/DD/YYYY HH:MI AM'),'Q',805,'Mandatory extracurricular activities','Does the electoral college work?','Cell phones at school','Driverless cars','Seeking multiple opinions','Exploring Venus','Facial action coding system',4,4,4,4,4,4,6);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(904,TO_DATE('02/19/2025 11:59 PM','MM/DD/YYYY HH:MI AM'),'H',805,'The Face on Mars','Driverless cars','Mandatory extracurricular activities','Does the electoral college work?','Summer projects','A Cowboy Who Rode the Waves','Community service',1,1,1,1,1,1,4);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(644,TO_DATE('03/05/2025 11:59 PM','MM/DD/YYYY HH:MI AM'),'Q',805,'Facial action coding system','Mandatory extracurricular activities','Phones and driving','Cell phones at school','Driverless cars','Exploring Venus','A Cowboy Who Rode the Waves',4,4,4,4,4,4,6);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(100,TO_DATE('03/19/2025 11:59 PM','MM/DD/YYYY HH:MI AM'),'E',805,'Phones and driving','Cell phones at school','Mandatory extracurricular activities','Facial action coding system','Driverless cars','Car-free cities','A Cowboy Who Rode the Waves',7,7,7,7,7,7,8);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(909,TO_DATE('04/02/2025 11:59 PM','MM/DD/YYYY HH:MI AM'),'H',805,'Mandatory extracurricular activities','A Cowboy Who Rode the Waves','Facial action coding system','Driverless cars','Phones and driving','Seeking multiple opinions','The Face on Mars',1,1,1,1,1,1,4);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(613,TO_DATE('04/16/2025 11:59 PM','MM/DD/YYYY HH:MI AM'),'F',805,'Facial action coding system','Seeking multiple opinions','Summer projects','Car-free cities','Exploring Venus','Community service','Driverless cars',14,14,14,14,14,14,16);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(250,TO_DATE('01/22/2025 11:59 PM','MM/DD/YYYY HH:MI AM'),'H',144,'Grades for extracurricular activities','Phones and driving','Community service','Does the electoral college work?','A Cowboy Who Rode the Waves','Distance learning','Exploring Venus',1,1,1,1,1,1,4);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(760,TO_DATE('02/05/2025 11:59 PM','MM/DD/YYYY HH:MI AM'),'Q',144,'A Cowboy Who Rode the Waves','Distance learning','Summer projects','Facial action coding system','Does the electoral college work?','Cell phones at school','Seeking multiple opinions',4,4,4,4,4,4,6);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(375,TO_DATE('02/19/2025 11:59 PM','MM/DD/YYYY HH:MI AM'),'H',144,'Does the electoral college work?','Mandatory extracurricular activities','Summer projects','Distance learning','Car-free cities','Facial action coding system','Cell phones at school',1,1,1,1,1,1,4);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(500,TO_DATE('03/05/2025 11:59 PM','MM/DD/YYYY HH:MI AM'),'Q',144,'Mandatory extracurricular activities','Car-free cities','Driverless cars','Grades for extracurricular activities','The Face on Mars','Facial action coding system','Exploring Venus',4,4,4,4,4,4,6);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(293,TO_DATE('03/19/2025 11:59 PM','MM/DD/YYYY HH:MI AM'),'E',144,'Facial action coding system','Phones and driving','Seeking multiple opinions','Car-free cities','Distance learning','Mandatory extracurricular activities','Driverless cars',7,7,7,7,7,7,8);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(664,TO_DATE('04/02/2025 11:59 PM','MM/DD/YYYY HH:MI AM'),'H',144,'Exploring Venus','Does the electoral college work?','Phones and driving','Seeking multiple opinions','Distance learning','Summer projects','Grades for extracurricular activities',1,1,1,1,1,1,4);
END;
/
BEGIN

	INSERT INTO Assignments
	(AssignmentID,DueDate,AssignmentTypeID,SectionID,PromptTitle1,PromptTitle2,PromptTitle3,PromptTitle4,PromptTitle5,PromptTitle6,PromptTitle7,PossiblePoints1,PossiblePoints2,PossiblePoints3,PossiblePoints4,PossiblePoints5,PossiblePoints6,PossiblePoints7)
	VALUES
	(164,TO_DATE('04/16/2025 11:59 PM','MM/DD/YYYY HH:MI AM'),'F',144,'Exploring Venus','Summer projects','Community service','Phones and driving','Mandatory extracurricular activities','The Face on Mars','Grades for extracurricular activities',14,14,14,14,14,14,16);
END;
/

COMMIT;
