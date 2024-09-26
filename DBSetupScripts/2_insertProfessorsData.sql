SET ESCAPE ON
SET SERVEROUTPUT ON

BEGIN 
	DBMS_OUTPUT.ENABLE;
	DBMS_OUTPUT.PUT_LINE('Inserting into table: Professors');
END;
/
BEGIN

	INSERT INTO Professors
	(ProfID,LastName,FirstName)
	VALUES
	(131,'Cretzi','Grantham');
END;
/
BEGIN

	INSERT INTO Professors
	(ProfID,LastName,FirstName)
	VALUES
	(336,'Scezzi','Norman');
END;
/
BEGIN

	INSERT INTO Professors
	(ProfID,LastName,FirstName)
	VALUES
	(472,'Seligman','Martha');
END;
/
BEGIN

	INSERT INTO Professors
	(ProfID,LastName,FirstName)
	VALUES
	(346,'Felloway','Casey');
END;
/
BEGIN

	INSERT INTO Professors
	(ProfID,LastName,FirstName)
	VALUES
	(833,'Zhu','Tianwei');
END;
/
BEGIN

	INSERT INTO Professors
	(ProfID,LastName,FirstName)
	VALUES
	(935,'Davis','Angela');
END;
/
BEGIN

	INSERT INTO Professors
	(ProfID,LastName,FirstName)
	VALUES
	(33,'Neider','Rael');
END;
/
BEGIN

	INSERT INTO Professors
	(ProfID,LastName,FirstName)
	VALUES
	(90,'Zander','Frank');
END;
/

COMMIT;
