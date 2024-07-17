/*
	A table is a database object which comprises of rows and columns
    Rows = Records and Columns = Fields
    A field provides specific info about data in table
    A record is each individual entry of a table.
*/



/* Create Database in SQL. [Syntax: CREATE DATABASE database_name];*/
--CREATE DATABASE Happy;

--USE Happy;

/* Drop Database in SQL. [Syntax: DROP DATABASE databse _name]*/
--CREATE DATABASE Happyy
--DROP DATABASE Happyy



/* 
    DataTypes in SQL
	bigint, int, smallint, tinyint
    decimal(s,d) s=total number of digits, d= number of digits after decimal point.
    char(s) s= number of characters, fixed length datatype ; varchar(s)  s= number of characters variable length datatype
    text
    date(YYYY-MM-DD), time(HH:MM:SS), Year(YYYY)
*/



/* 
	Constraints : They are used to specify rules for  data in table.
    1) Not Null : It ensures column can't have null value.
    2) Default : It sets default value for a column when no value is specified.
    3) Unique : Ensures that all values in a column are different.
    4) Primary Key : It uniquely identifies each record in a table (Not Null + Unique).
*/



/* 
	Create Table in SQL 
	Syntax:
	CREATE TABLE table_name(
	column1 datatype,
	column2 datatype NOT NULL,
	column3 datatype,
	column4 datatype,
	PRIMARY KEY(column1)
*/

--CREATE TABLE employee(
--	e_id int NOT NULL,
--	e_name varchar(20),
--	e_salary int,
--	e_age int,
--	e_gender varchar(20),
--	e_dept varchar(20),
--	PRIMARY KEY(e_id)
--	);

--CREATE TABLE department(
--d_id int,
--d_name varchar(30),
--d_location varchar(30),
--PRIMARY KEY(d_id)
--);

/* 
	INSERT Query in SQL 
	Syntax:
	INSERT INTO table_name
	VALUES (val1, val2, val3, val4)
*/

--INSERT INTO employee
--VALUES(1,'SHUBH PATHAK',40000,22,'MALE','GROUP FUNCTIONS');
--INSERT INTO employee
--VALUES(2,'ANANYA SRIVASTAVA',40000,22,'FEMALE','GROUP FUNCTIONS');
--INSERT INTO employee
--VALUES(3,'HARSHIT TAHLANI',39000,22,'MALE','GROUP OPERATIONS');
--INSERT INTO employee
--VALUES(4,'VISHAL SRIVASTAVA',30000,23,'MALE','INVESTMENT BANKING');
--INSERT INTO employee
--VALUES(5,'ADITI SRIVASTAVA',38000,21,'FEMALE','WEALTH MANAGEMENT');
--INSERT INTO employee
--VALUES(6,'Max',31000, 26,'MALE','HRIT')



--INSERT INTO department
--VALUES(1,'Content','New York')
--INSERT INTO department
--VALUES(2,'Support','Chicago')
--INSERT INTO department
--VALUES(3,'Analytics','New York')
--INSERT INTO department
--VALUES(4,'Sales','Boston')
--INSERT INTO department
--VALUES(5,'Tech','Paris')
--INSERT INTO department
--VALUES(6,'Finance','Boston')


/* 
	SELECT Statement in SQL
	Syntax:
	SELECT col1, col2,col3
	FROM table_name;
*/

--SELECT e_name FROM employee;
--SELECT e_id FROM employee;
--SElECT e_id, e_name, e_salary FROM employee;
--SELECT * FROM employee;         --Select all data from table



/* 
	SELECT DISTINCT Statement in SQL
	Syntax:
	SELECT DISTINCT col1, col2,col3
	FROM table_name;
*/

--SELECT DISTINCT e_gender FROM employee;



/*
	WHERE Clause in SQL
	Syntax:
	SELECT col1, col2,col3
	FROM table_name WHERE [condition];
*/

--SELECT * FROM employee WHERE e_gender='FEMALE';
--SELECT * FROM employee WHERE e_salary<40000;



/* 
	AND, OR and NOT Operator
*/

--Select * FROM employee WHERE e_salary<40000 AND e_gender='FEMALE';
--Select * FROM employee WHERE e_salary<40000 OR e_gender='FEMALE';
--Select * FROM employee WHERE NOT e_gender='FEMALE';



/*
	LIKE Operator: Used to extract record  where a particular patter is present.
				   Used with wildcard characters %(Represents zero,one or multiple characters and _(Represents a single character).
	Synatx:
	SELECT col_name FROM table_name 
	WHERE col_name LIKE '_XXX%'
*/

--SELECT * FROM employee
--WHERE e_name LIKE '%AN%';	

--SELECT * FROM employee
--WHERE e_name LIKE '_NA%';



/*
	BETWEEN Operator: Used to select values within a given range.
	Synatx:
	SELECT col_name FROM table_name 
	WHERE col_name BETWEEN val1 AND val2;
*/

--SELECT * FROM employee
--WHERE e_salary BETWEEN 38000 AND 39500;        --Both values inclusive



/*
	Common aggregate functions in SQL
	MIN() : Gives the smallest value.
	Syntax : SELECT MIN(col_name) FROM table_name;

	MAX() : Gives the largest value.
	Syntax : SELECT MAX(col_name) FROM table_name;

	COUNT() : Returns number of rows that match a specific criteria.
	Syntax : SELECT COUNT(*) FROM table_name WHERE condition;

	SUM() : Gives total sum of a numeric colum.
	Syntax : SELECT SUM(col_name) FROM table_name;

	AVG() : Gives average of a numeric colum.
	Syntax : SELECT AVG(col_name) FROM table_name;
*/

--SELECT MIN(e_salary) FROM employee;
--SELECT MAX(e_salary) FROM employee;
--SELECT COUNT(*) FROM employee WHERE e_gender='FEMALE';
--SELECT SUM(e_salary) FROM employee
--SELECT AVG(e_salary) FROM employee


/*
	String Functions in SQL
	LTRIM() : Removes blanks on the left side of character expresssion
	Syntax : SELECT LTRIM(expression)
	
	LOWER() : Converts all characters to lower case
	Syntax :  SELECT LOWER(expression)

	UPPER() : Converts all characters to upper case
	Syntax :  SELECT UPPER(expression)

	REVERSE() : Reverse all characters
	Syntax :  SELECT REVERSE(expression)

	SUBSTRING() : Gives substring from original string
	Syntax : SELECT SUBSTRING(original str , start index of substring[index starts from 1 not 0] , length of substring)

*/

--SELECT LTRIM('    SHUBH');
--SELECT LOWER('SHUBH');
--SELECT UPPER('SHUBH');
--SELECT REVERSE('SHUBH');
--SELECT SUBSTRING('SHUBH',1,2);



/* 
	ORDER BY Clause in SQL
	Used to sort data in asc or desc order.(default: asc)
	Syntax: SELECT * FROM table _name ORDER BY column_name ASC/DESC
*/

--SELECT * FROM employee;
--SELECT * FROM employee ORDER BY e_salary DESC;



/*
	TOP Clause in SQL
	Used to fetch TOP N records.
	Synatx : SELECT TOP N * FROM table_name 
*/

--SELECT TOP 3 * FROM employee
--SELECT TOP 3 * FROM employee ORDER BY e_salary



/*
	GROUP BY Statement in SQL
	Used to aggregate result with respect to a group.
	Syntax : SELECT col_list FROM table_name GROUP BY column_name;
	Syntax : SELECT col_list FROM table_name WHERE [condition] GROUP BY column_name ORDER BY column_name;

*/

--SELECT AVG(e_salary) as 'AVERAGE' ,e_gender FROM employee GROUP BY e_gender;
--SELECT AVG(e_age) as 'AVERAGE' ,e_dept FROM employee GROUP BY e_dept ORDER BY AVG(e_age) DESC;



/*
	HAVING Clause in SQL
	Used in combination with GROUP BY to impose condition on groups
	Syntax : SELECT col_list FROM table_name GROUP BY column_name HAVING [condition];
	Syntax : SELECT col_list FROM table_name WHERE [condition] GROUP BY column_name HAVING [condition] ORDER BY column_name;
*/

--SELECT AVG(e_salary) as 'AVERAGE' ,e_dept FROM employee GROUP BY e_dept HAVING AVG(e_salary)> 38000 ORDER BY AVG(e_salary) ;



/* 
	UPDATE Statement in SQL
	Used to modify the existing records in table
	Syntax : UPDATE table_name 
			 SET col1=val1, col2=val2, col3=val3
			 WHERE [condition];                      --Without where condition all rows will be affected
*/

--UPDATE employee SET e_age=24 WHERE e_id= 4;



/*
	DELETE Statement in SQL
	Used to delete existing records in the table.
	Syntax: DELETE FROM table_name WHERE [condition];               -- if where is not given all will be deleted
*/

--INSERT INTO employee
--VALUES (6 , 'MAX' ,25000, 25, 'MALE','ASSET MANAGEMENT')

--SELECT * FROM employee

--DELETE FROM employee WHERE e_id=6

--SELECT * FROM employee



/*
	TRUNCATE Statement in SQL
	Deletes all data inside the table but the structure(i.e column name remains intact).
	Syntax : TRUNCATE TABLE table_name
*/

--CREATE TABLE Employee1(
--e_id int NOT NULL,
--e_name varchar(20),
--e_salary int,
--e_age int,
--e_gender varchar(20),
--e_dept varchar(20),
--PRIMARY KEY(e_id)
--);

--INSERT INTO Employee1
--VALUES(1,'SHUBH PATHAK',40000,22,'MALE','GROUP FUNCTIONS');
--INSERT INTO Employee1
--VALUES(2,'ANANYA SRIVASTAVA',40000,22,'FEMALE','GROUP FUNCTIONS');
--INSERT INTO Employee1
--VALUES(3,'HARSHIT TAHLANI',39000,22,'MALE','GROUP OPERATIONS');
--INSERT INTO Employee1
--VALUES(4,'VISHAL SRIVASTAVA',30000,23,'MALE','INVESTMENT BANKING');
--INSERT INTO Employee1
--VALUES(5,'ADITI SRIVASTAVA',38000,21,'FEMALE','WEALTH MANAGEMENT');

--SELECT * FROM Employee1;
--TRUNCATE TABLE Employee1;
--SELECT * FROM Employee1;



/*
	INNER JOIN in SQL
	It returns rec that have matching values in both the tables, also known as simple joins.
	Synatx : SELECT column_list FROM table1 INNER JOIN table2 ON table1.col_x = table2.col_y;
*/

--SELECT * FROM employee AS e INNER JOIN department AS d ON e.e_id = d.d_id;
--SELECT * FROM employee;
--SELECT * FROM department;



/*
	LEFT JOIN in SQL
	It returns all rec from left table, and matched rec from right table.
	Synatx : SELECT column_list FROM table1 LEFT JOIN table2 ON table1.col_x = table2.col_y;
*/

--INSERT INTO employee
--VALUES(7,'Sarah',33000, 24,'FEMALE','IB')

--SELECT * FROM employee AS e LEFT JOIN department AS d ON e.e_id = d.d_id;



/*
	RIGHT JOIN in SQL
	It returns all rec from right table, and matched rec from left table.
	Synatx : SELECT column_list FROM table1 RIGHT JOIN table2 ON table1.col_x = table2.col_y;
*/

--INSERT INTO department
--VALUES(7,'Sales','Chicago')
--INSERT INTO department
--VALUES(8,'Finance','London')

--SELECT * FROM employee AS e RIGHT JOIN department as d ON e.e_id = d.d_id;

/*
	FULL JOIN in SQL
	It returns all rec from right table, and all rec from left table.
	Synatx : SELECT column_list FROM table1 RIGHT JOIN table2 ON table1.col_x = table2.col_y;
*/

--SELECT * FROM employee;
--SELECT * FROM department;

--SELECT * FROM employee as e FULL JOIN department AS d ON e.e_id = d.d_id;
--SELECT * FROM employee as e FULL OUTER JOIN department AS d ON e.e_id = d.d_id;


/*LEFT OUTER JOIN is same as LEFT JOIN and RIGHT OUTER JOIN is same as RIGHT JOIN and FULL OUTER JOIN is same as FULL JOIN.*/



/*
	Cross JOIN in SQL
	It returns all the records from the left and right tables. It produces a result set that contains the cartesian product of two or more tables. 
	Cross join is also called a Cartesian Join. 
	It is used when we want every possible combination of rows to be present in a database’s tables. 
	SQL CROSS JOIN with condition of WHERE Clause operates as an INNER JOIN; 
	Synatx : SELECT column_list FROM table1 CROSS JOIN table2 ;
*/

--SELECT * FROM employee as e CROSS JOIN department as d;



/*
	SELF JOIN in SQL
	A self join is a regular join that is used to join a table with itself. 
	It basically allows us to combine the rows from the same table based on some specific conditions.
	Syntax : SELECT column_list FROM table1 JOIN table1 ON table1.col_x = table1.col_y;
*/

--CREATE TABLE member(
--id int,
--name varchar(30),
--m_id int,
--PRIMARY KEY(id)
--)

--INSERT INTO member
--VALUES(1,'MAX',2)
--INSERT INTO member
--VALUES(2,'JACK',3)
--INSERT INTO member
--VALUES(3,'RON',1)

--SELECT * FROM member;

--SELECT m1.id, m1.name, m2.name as 'MANAGER' FROM member as m1 JOIN  member as m2 ON m1.m_id = m2.id ORDER BY m1.id;



/*
	UPDATE using JOIN in SQL
*/

--SELECT * FROM employee;
--SELECT * FROM department;

--UPDATE department
--SET d_name =  'Technology'
--FROM employee AS e JOIN department AS d ON e.e_id = d.d_id
--WHERE e_id = '6'



/*
	DELETE using JOIN in SQL
*/

--UPDATE department
--SET d_location = 'DELHI'
--WHERE d_id=7;

--DELETE employee FROM 
--employee AS e JOIN department AS d ON e.e_id=d.d_id 
--WHERE d_location= 'DELHI';

--SELECT * FROM department;



/* 
	UNION OPERATOR in SQL
	Used to combine the result set of two or more SELECT Statements. Number of col in both tables should be same. No duplicate is present in final result.
	Syntax : SELECT colum_list FROM table1 UNION SELECT column_list FROM table2
*/

--SELECT * FROM employee UNION SELECT * FROM Employee1;



/* 
	UNION ALL OPERATOR in SQL
	Used to combine the result set of two or more SELECT Statements includes duplicates. Number of col in both tables should be same. 
	Syntax : SELECT colum_list FROM table1 UNION ALL SELECT column_list FROM table2
*/

--SELECT * FROM employee UNION ALL SELECT * FROM Employee1;



/* 
	INTERSECT OPERATOR in SQL
	Used to combines two select statements and returns only the dataset that is common in both the statements. Number of col in both tables should be same. 
	Syntax : SELECT colum_list FROM table1 INTERSECT SELECT column_list FROM table2
*/

--SELECT * FROM employee INTERSECT SELECT * FROM Employee1;



/* 
	EXCEPT OPERATOR in SQL
	Used to combines two select statements and returns unique records from left table which are not part of right table. Number of col in both tables should be same. 
	Syntax : SELECT colum_list FROM table1 EXCEPT SELECT column_list FROM table2
*/

--SELECT * FROM employee;
--SELECT * FROM Employee1;
--SELECT * FROM employee EXCEPT SELECT * FROM Employee1;



/*
	VIEWS in SQL
	VIEW is a virtual table based on result of an sql statement.
	Syntax : CREATE VIEW view_name AS 
			 SELECT column_list
			 FROM table_name
			 WHERE [condition];
*/

--CREATE VIEW female_emp AS
--SELECT * FROM employee WHERE e_gender='FEMALE';

--SELECT * FROM female_emp;

--CREATE VIEW male_emp AS
--SELECT * FROM employee WHERE e_gender='MALE';

--SELECT * FROM male_emp;



/*
	DROP VIEW in SQL
	Syntax : DROP VIEW view_name.
*/

--DROP VIEW male_emp;
--DROP VIEW female_emp;



/*
	ALTER TABLE in SQL
	Used to add, delete, or modify columns in a table.
*/

/*
	ADD Column
	Syntax : ALTER TABLE table_name
			 ADD column_name datatype;
	
	DROP Column
	Syntax: ALTER TABLE table_name
			DROP COLUMN colum_name;
*/

--CREATE TABLE guest(
--id int,
--name varchar(20),
--PRIMARY KEY(id)
--);

--SELECT * FROM guest;

--ALTER TABLE guest
--ADD date DATE;

--ALTER TABLE guest
--DROP COLUMN date;

--ALTER TABLE guest
--ALTER COLUMN date year;



/*
	MERGE in SQL
	It is combination of insert,delete and update statement.
	Syntax : MERGE [Target Table] AS T
			 USING [Source Table] AS S
			 ON [JOIN condition]
			 WHEN MATCHED 
				THEN [UPDATE Statement]
			 WHEN NOT MATCHED BY TARGET
				THEN [INSERT Statement]
			 WHEN NOT MATCHED BY SOURCE
				THEN [DELETE Statement]
*/

--CREATE TABLE emp_s(
--e_id  int,
--e_name varchar(20),
--e_salary int,
--e_age int,
--e_gender varchar(20),
--e_dept varchar(20)
--)

--CREATE TABLE emp_t(
--e_id  int,
--e_name varchar(20),
--e_salary int,
--e_age int,
--e_gender varchar(20),
--e_dept varchar(20)
--)

--INSERT INTO emp_s
--VALUES (1,'SAM',93000,40,'MALE','OPERATION'),
--	   (2,'BOB',80000,21,'MALE','SUPPORT'),
--	   (3,'ANNE',130000,25,'FEMALE','ANALYTICS'),
--	   (6,'JEFF',112000,27,'MALE','OPERATIONS'),
--	   (7,'ADAM',100000,28,'MALE','CONTENT'),
--	   (8,'PRIYA',85000,37,'FEMALE','TECH');

--INSERT INTO emp_t
--VALUES (1,'SAM',95000,45,'MALE','OPERATION'),
--	   (2,'BOB',80000,21,'MALE','SUPPORT'),
--	   (3,'ANNE',125000,25,'FEMALE','ANALYTICS'),
--	   (4,'JULIA',73000,30,'FEMALE','ANALYTICS'),
--	   (5,'MATT',159000,33,'MALE','SALES'),
--	   (6,'JEFF',112000,27,'MALE','OPERATIONS');

--MERGE emp_t as t
--USING emp_s as s
--ON t.e_id=s.e_id
--WHEN MATCHED
--	THEN UPDATE SET t.e_salary=s.e_salary, t.e_age=s.e_age
--WHEN NOT MATCHED BY TARGET
--	THEN INSERT(e_id,e_name,e_salary,e_age,e_gender,e_dept)
--	VALUES(s.e_id,s.e_name,s.e_salary,s.e_age,s.e_gender,s.e_dept)
--WHEN NOT MATCHED BY SOURCE
--	THEN DELETE;

--SELECT * FROM emp_s;
--SELECT * FROM emp_t;



/*
	User Defined Functions in SQL
	Scalar Valued : It always returns a scalar value.
	Syntax : CREATE FUNCTION func_name(@param1 datatype,@param2 datatype..)
			 RETURN retur_datatype
			 AS
			 BEGIN
				--function body
			 RETURN value
			 END

	Table Valued : It always returns a table.
	Syntax : CREATE FUNCTION func_name(@param1 datatype,@param2 datatype..)
			 RETURN table
			 AS
			 RETURN (SELECT column_list FROM table_name WHERE[condition]

*/

--SCALAR VALUED:
--CREATE FUNCTION add_five(@num int)
--RETURNS int
--AS
--BEGIN
--RETURN(@num+5)
--END;

--SELECT dbo.add_five(100) AS 'ANSWER';

--DROP FUNCTION dbo.add_five;

--TABLE VALUED:
--SELECT* FROM employee;

--CREATE FUNCTION EMP_TABLE(@gender varchar(20))
--RETURNS table
--AS
--RETURN (SELECT * FROM employee WHERE e_gender=@gender);

--SELECT * FROM dbo.EMP_TABLE('FEMALE');
--SELECT * FROM dbo.EMP_TABLE('MALE');

--DROP FUNCTION dbo.EMP_TABLE;



/*
	TEMPORARY Table in SQL
	It is creaated in tempDB and deleted as soon as the session is terminated.
	Synatx : CREATE TABLE #table_name(
			 table_body	
				);
*/

--CREATE TABLE #emp_temp(
--e_id  int,
--e_name varchar(20),
--e_salary int,
--e_age int,
--e_gender varchar(20),
--e_dept varchar(20)
--);

--SELECT * FROM #emp_temp;



/*
	CASE Statement in SQL
	Helps in multi way decision making.
	Synatx : CASE
				WHEN condition1 THEN result1
				WHEN condition2 THEN result2
				WHEN conditionN THEN resultN
				ELSE result
			 ENd;
*/

--SELECT *, e_sex=
--CASE
--	WHEN e_gender='MALE' THEN 'M'
--	WHEN e_gender='FEMALE' THEN 'F'
--	ELSE 'NONE'
--END
--FROM employee;

--SELECT * FROM employee;



/*
	IIF() Function in SQL
	Alt to CASE Statement
	Syntax : IIF(boolean_expr,true_vale,false_value
*/

--SELECT *, e_sex = IIF(e_gender='MALE','M','F')
--FROM employee;



/*
	Stored Procedure in SQL
	It is prepared sql code which can be saved  and reused.
	Synatx : CREATE PROCEDURE procedure_name AS
			 sql_statement
			 GO;
	To execute procedure : EXEC procedure_name
*/

--CREATE PROCEDURE emp_age AS
--SELECT e_age FROM employee
--GO

--EXEC emp_age;



/*
	Stored Procedure with parameters in SQL
	It is prepared sql code which can be saved  and reused.
	Synatx : CREATE PROCEDURE procedure_name 
			 @param1  datatype , @param2 datatype
			 AS
			 sql_statement
			 GO
	To execute procedure : EXEC procedure_name
*/

--CREATE PROCEDURE emp_gender @gender varchar(20) AS
--SELECT * FROM employee WHERE e_gender=@gender
--GO

--EXEC emp_gender @gender='MALE';
--EXEC emp_gender @gender='FEMALE';
--DROP PROCEDURE emp_gender;


/*
	Exception Handling in SQL
	An error condition during a program execution is called an exception.
	The mechanism for resolving such exception is called exception handling.
	SQL provides try/catch  block for exception handling.
	Synatx :  BEGIN TRY
				SQL Statements
			  END TRY

			  BEGIN CATCH
				print error or rollback transaction
			  END CATCH
*/

--DECLARE @a int;                --We use DECLARE keyword to decclare a variable
--DECLARE @b int;

--BEGIN TRY
--	SET @a=1;					--We use SET keyword to initialize a variable
--	SET @b=@a/0;
--END TRY

--BEGIN CATCH
--PRINT error_message()			--We use PRINT keyword to print in SQL
--END CATCH

--SELECT * FROM employee;

--BEGIN TRY
--SELECT e_salary+e_name FROM employee;
--END TRY

--BEGIN CATCH
--print 'Cannot add numeric value to char value'
--END CATCH



/*
	Transaction in SQL
	It is a group of commands that change data stored in a database.
	Syntax : BEGIN TRY
			 BEGIN TRANSACTION
				sql statement
				COMMIT TRANSACTION
				PRINT 'TRANSACTION COMPLETE'
			 END TRY

			 BEGIN CATCH
			 rollback transaction
			 PRINT 'TRANSACTION ROLLEDBACK'
			 END CATCH
*/

--BEGIN TRANSACTION
--UPDATE employee SET e_age=30 WHERE e_name='VISHAL SRIVASTAVA';
--COMMIT TRANSACTION
----ROLLBACK TRANSACTION

--SELECT * FROM employee;

--USING TRY CATCH
--BEGIN TRY
--	BEGIN TRANSACTION
--	UPDATE Employee1 SET e_gender='M' WHERE e_gender='MALE'
--	UPDATE Employee1 SET e_gender=2/0 WHERE e_gender='FEMALE'
--	COMMIT TRANSACTION
--	PRINT 'TRANSACTION COMMITED'
--END TRY

--BEGIN CATCH
--	ROLLBACK TRANSACTION
--	PRINT 'TRANSACTION ROLLEDBACK'
--END CATCH



/*
	Database Administrator
	Directs  or performs all activities related to maintaining a successful database environment.
*/

/*
	Recovery Models
	It is a database property that controls how transactions are logged,wether the transaction log requires backingup and what kind of restore operations are available.
	-Simple: It maintains only a min amount of info  in SQL Seerver transaction log file.
			 The data is recoverable only to the most recent full database or differential backups.
			 Syntax : USE [master]
					  GO
					  ALTER DATABASE
					  [database_name]
					  SET RECOVERY SIMPLE WITH
					  NO_WAIT
					  GO
	
	-Full: It logs every transaction and maitains it there until a transaction log backup is taken.
		   In this we can recover to an arbitrary point in point from transaction log backups.
		   Syntax : USE [master]
					  GO
					  ALTER DATABASE
					  [database_name]
					  SET RECOVERY FULL WITH
					  NO_WAIT
					  GO

	-Bulk Logged: In this there are certain bulk operations scuh as BULK INSERT, CREATE INDEX,etc.
				  It can be used when we run batch jobs or during time when we perform routine maintenance.
				  Syntax : USE [master]
					  GO
					  ALTER DATABASE
					  [database_name]
					  SET RECOVERY BULK_LOGGED WITH
					  NO_WAIT
					  GO
*/