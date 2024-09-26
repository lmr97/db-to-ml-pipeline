SET ESCAPE ON
SET SERVEROUTPUT ON

BEGIN 
	DBMS_OUTPUT.ENABLE;
	DBMS_OUTPUT.PUT_LINE('Inserting into table: Courses');
END;
/
BEGIN

	INSERT INTO Courses
	(CourseID,DeptCode,CourseNumber,CourseTitle)
	VALUES
	(303,'ANTH',1001,'Anthropology Writing');
END;
/
BEGIN

	INSERT INTO Courses
	(CourseID,DeptCode,CourseNumber,CourseTitle)
	VALUES
	(113,'HIST',3250,'French Medieval Agriculture');
END;
/
BEGIN

	INSERT INTO Courses
	(CourseID,DeptCode,CourseNumber,CourseTitle)
	VALUES
	(644,'BSAD',2300,'Human Resources Fundamentals');
END;
/
BEGIN

	INSERT INTO Courses
	(CourseID,DeptCode,CourseNumber,CourseTitle)
	VALUES
	(284,'ENGL',1245,'Professional \& Academic Writing');
END;
/
BEGIN

	INSERT INTO Courses
	(CourseID,DeptCode,CourseNumber,CourseTitle)
	VALUES
	(414,'PHIL',2030,'Philosophical Writing');
END;
/

COMMIT;
