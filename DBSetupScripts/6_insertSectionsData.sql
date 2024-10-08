SET ESCAPE ON
SET SERVEROUTPUT ON

BEGIN 
	DBMS_OUTPUT.ENABLE;
	DBMS_OUTPUT.PUT_LINE('Inserting into table: Sections');
END;
/
BEGIN

	INSERT INTO Sections
	(SectionID,CourseID,ProfID,StartTime)
	VALUES
	(111,303,336,TO_DATE('09/04/2023 02:00 PM','MM/DD/YYYY HH:MI AM'));
END;
/
BEGIN

	INSERT INTO Sections
	(SectionID,CourseID,ProfID,StartTime)
	VALUES
	(112,303,472,TO_DATE('09/04/2023 10:00 AM','MM/DD/YYYY HH:MI AM'));
END;
/
BEGIN

	INSERT INTO Sections
	(SectionID,CourseID,ProfID,StartTime)
	VALUES
	(311,113,833,TO_DATE('09/04/2023 01:00 PM','MM/DD/YYYY HH:MI AM'));
END;
/
BEGIN

	INSERT INTO Sections
	(SectionID,CourseID,ProfID,StartTime)
	VALUES
	(809,284,33,TO_DATE('09/04/2023 09:00 AM','MM/DD/YYYY HH:MI AM'));
END;
/
BEGIN

	INSERT INTO Sections
	(SectionID,CourseID,ProfID,StartTime)
	VALUES
	(812,284,33,TO_DATE('09/04/2023 10:00 AM','MM/DD/YYYY HH:MI AM'));
END;
/
BEGIN

	INSERT INTO Sections
	(SectionID,CourseID,ProfID,StartTime)
	VALUES
	(291,284,935,TO_DATE('09/04/2023 08:00 AM','MM/DD/YYYY HH:MI AM'));
END;
/
BEGIN

	INSERT INTO Sections
	(SectionID,CourseID,ProfID,StartTime)
	VALUES
	(834,284,131,TO_DATE('09/04/2023 10:00 AM','MM/DD/YYYY HH:MI AM'));
END;
/
BEGIN

	INSERT INTO Sections
	(SectionID,CourseID,ProfID,StartTime)
	VALUES
	(909,644,346,TO_DATE('01/08/2025 08:30 AM','MM/DD/YYYY HH:MI AM'));
END;
/
BEGIN

	INSERT INTO Sections
	(SectionID,CourseID,ProfID,StartTime)
	VALUES
	(805,644,33,TO_DATE('01/08/2025 10:30 AM','MM/DD/YYYY HH:MI AM'));
END;
/
BEGIN

	INSERT INTO Sections
	(SectionID,CourseID,ProfID,StartTime)
	VALUES
	(144,113,472,TO_DATE('01/08/2025 08:30 AM','MM/DD/YYYY HH:MI AM'));
END;
/

COMMIT;
