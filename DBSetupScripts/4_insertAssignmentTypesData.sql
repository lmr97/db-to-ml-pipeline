SET ESCAPE ON
SET SERVEROUTPUT ON

BEGIN 
	DBMS_OUTPUT.ENABLE;
	DBMS_OUTPUT.PUT_LINE('Inserting into table: AssignmentTypes');
END;
/
BEGIN

	INSERT INTO AssignmentTypes
	(AssignmentTypeID,AssignmentType)
	VALUES
	('H','Homework');
END;
/
BEGIN

	INSERT INTO AssignmentTypes
	(AssignmentTypeID,AssignmentType)
	VALUES
	('E','Examination');
END;
/
BEGIN

	INSERT INTO AssignmentTypes
	(AssignmentTypeID,AssignmentType)
	VALUES
	('Q','Quiz');
END;
/
BEGIN

	INSERT INTO AssignmentTypes
	(AssignmentTypeID,AssignmentType)
	VALUES
	('F','Final Examination');
END;
/

COMMIT;
