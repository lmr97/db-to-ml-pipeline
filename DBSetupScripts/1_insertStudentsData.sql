SET ESCAPE ON
SET SERVEROUTPUT ON

BEGIN 
	DBMS_OUTPUT.ENABLE;
	DBMS_OUTPUT.PUT_LINE('Inserting into table: Students');
END;
/
BEGIN

	INSERT INTO Students
	(StudentID,Lastname,FirstName,MiddleName)
	VALUES
	(109,'Bazen','Molly','Elizabeth');
END;
/
BEGIN

	INSERT INTO Students
	(StudentID,Lastname,FirstName,MiddleName)
	VALUES
	(563,'Faden','Jesse','Grace');
END;
/
BEGIN

	INSERT INTO Students
	(StudentID,Lastname,FirstName,MiddleName)
	VALUES
	(901,'Kendey','James',NULL);
END;
/
BEGIN

	INSERT INTO Students
	(StudentID,Lastname,FirstName,MiddleName)
	VALUES
	(825,'Sydney','Harold','Henry');
END;
/
BEGIN

	INSERT INTO Students
	(StudentID,Lastname,FirstName,MiddleName)
	VALUES
	(235,'Henson','Michael','Cera');
END;
/
BEGIN

	INSERT INTO Students
	(StudentID,Lastname,FirstName,MiddleName)
	VALUES
	(494,'Scezzi','Giulio','Antonio');
END;
/
BEGIN

	INSERT INTO Students
	(StudentID,Lastname,FirstName,MiddleName)
	VALUES
	(728,'Feggleston','Andresa',NULL);
END;
/
BEGIN

	INSERT INTO Students
	(StudentID,Lastname,FirstName,MiddleName)
	VALUES
	(923,'Snyder','George',NULL);
END;
/
BEGIN

	INSERT INTO Students
	(StudentID,Lastname,FirstName,MiddleName)
	VALUES
	(757,'Fleight','Samuel','Becker');
END;
/
BEGIN

	INSERT INTO Students
	(StudentID,Lastname,FirstName,MiddleName)
	VALUES
	(693,'Chao','Li','Fei');
END;
/
BEGIN

	INSERT INTO Students
	(StudentID,Lastname,FirstName,MiddleName)
	VALUES
	(332,'Kalanga','Tapi''i','Sabe''e');
END;
/
BEGIN

	INSERT INTO Students
	(StudentID,Lastname,FirstName,MiddleName)
	VALUES
	(104,'Sigourney','Kenneth','Kai');
END;
/
BEGIN

	INSERT INTO Students
	(StudentID,Lastname,FirstName,MiddleName)
	VALUES
	(122,'Zeller','Taylor',NULL);
END;
/
BEGIN

	INSERT INTO Students
	(StudentID,Lastname,FirstName,MiddleName)
	VALUES
	(801,'Craden','Zaden','Taden');
END;
/
BEGIN

	INSERT INTO Students
	(StudentID,Lastname,FirstName,MiddleName)
	VALUES
	(220,'MacReady','Zed','Theodore');
END;
/

COMMIT;
