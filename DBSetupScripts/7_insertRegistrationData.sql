SET ESCAPE ON
SET SERVEROUTPUT ON

BEGIN 
	DBMS_OUTPUT.ENABLE;
	DBMS_OUTPUT.PUT_LINE('Inserting into table: Registration');
END;
/
BEGIN

	INSERT INTO Registration
	(StudentID,SectionID)
	VALUES
	(109,111);
END;
/
BEGIN

	INSERT INTO Registration
	(StudentID,SectionID)
	VALUES
	(109,809);
END;
/
BEGIN

	INSERT INTO Registration
	(StudentID,SectionID)
	VALUES
	(109,805);
END;
/
BEGIN

	INSERT INTO Registration
	(StudentID,SectionID)
	VALUES
	(563,809);
END;
/
BEGIN

	INSERT INTO Registration
	(StudentID,SectionID)
	VALUES
	(563,311);
END;
/
BEGIN

	INSERT INTO Registration
	(StudentID,SectionID)
	VALUES
	(901,311);
END;
/
BEGIN

	INSERT INTO Registration
	(StudentID,SectionID)
	VALUES
	(901,291);
END;
/
BEGIN

	INSERT INTO Registration
	(StudentID,SectionID)
	VALUES
	(825,291);
END;
/
BEGIN

	INSERT INTO Registration
	(StudentID,SectionID)
	VALUES
	(825,144);
END;
/
BEGIN

	INSERT INTO Registration
	(StudentID,SectionID)
	VALUES
	(235,809);
END;
/
BEGIN

	INSERT INTO Registration
	(StudentID,SectionID)
	VALUES
	(494,809);
END;
/
BEGIN

	INSERT INTO Registration
	(StudentID,SectionID)
	VALUES
	(494,909);
END;
/
BEGIN

	INSERT INTO Registration
	(StudentID,SectionID)
	VALUES
	(728,144);
END;
/
BEGIN

	INSERT INTO Registration
	(StudentID,SectionID)
	VALUES
	(923,111);
END;
/
BEGIN

	INSERT INTO Registration
	(StudentID,SectionID)
	VALUES
	(923,311);
END;
/
BEGIN

	INSERT INTO Registration
	(StudentID,SectionID)
	VALUES
	(923,809);
END;
/
BEGIN

	INSERT INTO Registration
	(StudentID,SectionID)
	VALUES
	(923,909);
END;
/
BEGIN

	INSERT INTO Registration
	(StudentID,SectionID)
	VALUES
	(757,909);
END;
/
BEGIN

	INSERT INTO Registration
	(StudentID,SectionID)
	VALUES
	(104,144);
END;
/
BEGIN

	INSERT INTO Registration
	(StudentID,SectionID)
	VALUES
	(104,291);
END;
/
BEGIN

	INSERT INTO Registration
	(StudentID,SectionID)
	VALUES
	(220,311);
END;
/
BEGIN

	INSERT INTO Registration
	(StudentID,SectionID)
	VALUES
	(220,812);
END;
/
BEGIN

	INSERT INTO Registration
	(StudentID,SectionID)
	VALUES
	(220,144);
END;
/

COMMIT;
