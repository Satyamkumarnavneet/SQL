create database Temp1;

create database Temp2;

CREATE DATABASE College;

CREATE DATABASE IF NOT EXISTS College;

DROP DATABASE IF EXISTS Comapny;

DROP DATABASE Temp1;
DROP DATABASE Temp2;

USE College;

CREATE TABLE Student(
Id int PRIMARY KEY,
Name VARCHAR(50),
Age INT NOT NULL
);

INSERT INTO Student VALUES(1, "Satyam", 20);
INSERT INTO Student VALUES(2, "Shradha", 24);

SELECT * FROM student;

SHOW DATABASES;

SHOW TABLES;

CREATE TABLE Studnet1(
RoolNo int PRIMARY KEY,
Name VARCHAR(50)
);

SHOW TABLES;

SELECT * FROM Studnet1;

INSERT INTO Studnet1 VALUES (1, "Satyam");
INSERT INTO Studnet1 VALUES (2, "Supriya");
INSERT INTO Studnet1 VALUES (3, "Shivali");
INSERT INTO Studnet1 VALUES (4, "Samruddhi");

INSERT INTO Studnet1
(RoolNo, Name)
VALUES
(5, "Sohan"),
(6, "Mohini"),
(7, "Alexa"),
(8, "Mini"),
(9, "Pixel");

SELECT * FROM Studnet1;

ALTER TABLE Studnet1 RENAME TO Student1;

ALTER TABLE Student1 RENAME COLUMN RoolNo TO RollNo;

SELECT * FROM Student1;

/*  Practice Question 1 
Create a database for your company named XYZ.

Step1: create a table inside this DB to store employee info (id, name and salary).

Step2: Add following information in the DB :

1, "adam", 25000
2, "bob", 30000
3, "casey", 40000

Step3: Select & view all your table data.
*/

CREATE DATABASE Google;

CREATE TABLE EmployeeInfo(
EmpId INT PRIMARY KEY,
EmpName VARCHAR(50),
Salary INT
);

INSERT INTO EmployeeInfo 
(EmpID, EmpName, Salary)
VALUES
(1, "Adam", 2500),
(2, "Bob", 30000),
(3, "Casey", 40000);

SELECT * FROM EmployeeInfo;

INSERT INTO EmployeeInfo VALUES (4, "Supriya", 700000);

USE Google;

CREATE TABLE Constrainst(
Id INT UNIQUE,
Name VARCHAR(50),
Age INT,
City VARCHAR(20),
PRIMARY KEY(Id, name)
/*PRIMARY KEY(Id)*/
);

INSERT INTO Constrainst VALUE(100);
INSERT INTO Constrainst VALUE(100);

DROP TABLE IF EXISTS Constrainst;

CREATE TABLE Employe(
EmpID INT,
Salary INT DEFAULT 25000
);

INSERT INTO Employe (EmpID) VALUES (102);

SELECT * FROM Employe;

USE College;

Select * FROM Student;

CREATE TABLE StudnetInfo(
RollNo INT PRIMARY KEY,
Name VARCHAR(50),
Marks INT NOT NULL,
Grade VARCHAR(1),
City VARCHAR(20)
);

ALTER TABLE StudnetInfo RENAME TO StudentInfo;

INSERT INTO StudentInfo
(RollNo, Name, Marks, Grade, City)
VALUES
(101, "Satyam", 90, "A", "Punjab"),
(102, "Sumayaa", 78, "B", "UK"),
(103, "Chetna", 90, "B", "London"),
(104, "Supriya", 68, "D", "Texas"),
(105, "Soni", 78, "C", "Mumbai"),
(106, "Samartha", 58, "B", "France"),
(107, "Samruddhi", 78, "C", "Pune"),
(108, "Sasmistra", 58, "C", "Delhi"),
(109, "Anupriya", 88, "B", "Bihar"),
(110, "Akanksha", 98, "A", "UK"),
(111, "Aarzoo", 98, "A", "UP");

/* Select */

SELECT Name, Grade, Marks FROM StudentInfo;

SELECT * FROM StudentInfo;

SELECT City FROM StudentInfo;

SELECT DISTINCT City FROM StudentInfo;


/* Where Clause */

SELECT * FROM StudentInfo WHERE Marks > 80;

SELECT Name FROM StudentInfo WHERE City = "UK";

SELECT NAME FROM StudentInfo WHERE City = "UK" AND Marks >= 70;

SELECT Name FROM StudentInfo WHERE Marks + 10 > 90;

/* Operator */

SELECT * FROM StudentInfo WHERE Marks > 60 AND City = "Pune";

SELECT * FROM StudentInfo WHERE Marks > 60 OR City = "Pune";

SELECT * FROM StudentInfo WHERE Marks BETWEEN 70 AND 90;

SELECT * FROM StudentInfo WHERE City IN ("UK", "Pune");

SELECT * FROM StudentInfo WHERE City NOT IN ("UK", "Pune");

/* Limit */

SELECT * FROM StudentInfo LIMIT 6;

SELECT * FROM StudentInfo  WHERE Marks > 60 LIMIT 6;

/* Order by Clause */

SELECT * FROM StudentInfo ORDER BY City ASC;

SELECT * FROM StudentInfo ORDER BY City DESC;

SELECT * FROM StudentInfo ORDER BY Marks ASC;

/* Aggregate Function */

SELECT MAX(Marks) From StudentInfo;

SELECT COUNT(Name) From StudentInfo;

SELECT MIN(Marks) From StudentInfo;

SELECT AVG(Marks) From StudentInfo;

SELECT SUM(Marks) From StudentInfo;

/* Group by Clause */

SELECT City FROM StudentInfo GROUP BY City;

SELECT City, COUNT(RollNo) FROM StudentInfo Group BY City;

SELECT City, AVG(Marks) FROM StudentInfo Group BY City;

/* Practice Qs 
Write the Query to find avg marks in each city in ascending order.
*/

SELECT City, AVG(Marks) FROM StudentInfo Group BY City ORDER BY City;

/*
Practice Qs
For the given table, find the total payment according to each payment method

customer_id -> customer -> mode -> city
101 Olivia Barrett Netbanking Portland
102 Ethan Sinclair Credit Card Miami
103 Maya Hernandez Credit Card Seattle
Liam Donovan Netbanking Denver
Sophia Nguyen Credit Card New Orleans
Caleb Foster Debit Card Minneapolis
Ava Patel Debit Card Phoenix
Lucas Carter Netbanking Boston
Isabella Martinez Netbanking Nashville
Jackson Brooks Credit Card Boston

*/

CREATE TABLE PaymentCount(
CustomerID INT,
CusName VARCHAR(50),
Mode VARCHAR(50),
City VARCHAR(50)
);

SELECT * FROM PaymentCount;

INSERT INTO PaymentCount (CustomerID, CusName, Mode, City)
VALUES
(101, 'Olivia Barrett', 'Netbanking', 'Portland'),
(102, 'Ethan Sinclair', 'Credit Card', 'Portland'),
(103, 'Maya Hernandez', 'Credit Card', 'Portland'),
(104, 'Liam Donovant', 'Netbanking', 'Portland'),
(105, 'Sophia Nguyen', 'Credit Card', 'Portland'),
(106, 'Caleb Foster', 'Debit Card', 'Portland'),
(107, 'Ava Patel', 'Debit Card', 'Portland'),
(108, 'Lucas Carter', 'Netbanking', 'Portland'),
(109, 'Isabella Martinez', 'Netbanking', 'Portland'),
(110, 'Jackson Brooks', 'Credit Card', 'Portland');

SELECT Mode, COUNT(Mode ) FROM PaymentCount GROUP BY Mode;

/*
Cascading for FK

On Delete Cascade
When we create a foreign key using this option, it deletes the referencing rows in the child table
when the referenced row is deleted in the parent table which has a primary key.

On Update Cascade
When we create a foreign key using UPDATE CASCADE the referencing rows are updated in the child
table when the referenced row is updated in the parent table which has a primary key.

CREATE TABLE student (
id INT PRIMARY KEY,
courseID INT,

FOREIGN KEY(courseID) REFERENCES course(id)
ON DELETE CASCADE
ON UPDATE CASCADE

 );

*/


/*

Table related Queries

Alter (to change the schema)

ADD Column
ALTER TABLE table_name
ADD COLUMN column_name datatype constraint;

DROP Column

ALTER TABLE table_name
DROP COLUMN column_name;

RENAME Table

ALTER TABLE table_ name
RENAME TO new_table_name;

*/

USE College;

SELECT * FROM StudentInfo;

ALTER TABLE StudentInfo ADD Age INT;

ALTER TABLE StudentInfo ADD PhoneNumber INT;

ALTER TABLE StudentInfo DROP Age;

ALTER TABLE StudentInfo DROP PhoneNumber;

ALTER TABLE StudentInfo ADD COLUMN Age INT NOT NULL DEFAULT 19;

ALTER TABLE StudentInfo MODIFY COLUMN Age VARCHAR(2);

INSERT INTO StudentInfo VALUES(120, "Gargi", 88, "C", "Patna", 100);

ALTER TABLE StudentInfo CHANGE Age SAge INT;

/*
Table related Queries

Truncate (to delete table's data)

TRUNCATE TABLE table_name ;

*/

TRUNCATE TABLE StudentInfo;

SELECT * FROM StudentInfo;

INSERT INTO StudentInfo
(RollNo, Name, Marks, Grade, City)
VALUES
(101, "Satyam", 90, "A", "Punjab"),
(102, "Sumayaa", 78, "B", "UK"),
(103, "Chetna", 90, "B", "London"),
(104, "Supriya", 68, "D", "Texas"),
(105, "Soni", 78, "C", "Mumbai"),
(106, "Samartha", 58, "B", "France"),
(107, "Samruddhi", 78, "C", "Pune"),
(108, "Sasmistra", 58, "C", "Delhi"),
(109, "Anupriya", 88, "B", "Bihar"),
(110, "Akanksha", 98, "A", "UK"),
(111, "Aarzoo", 98, "A", "UP");

ALTER TABLE StudentInfo DROP SAge;

/*
Practice Qs 

Qs: In the student table :
a. Change the name of column "ame to “full_name”. ——”
b. Delete all the students who scored marks less than 80.
c. Delete the column for grades.

*/

ALTER TABLE StudentInfo CHANGE Name FullName VARCHAR(50);

SELECT * FROM StudentInfo;

DELETE FROM StudentInfo WHERE Marks < 80;

SET SQL_SAFE_UPDATES = 0;

ALTER TABLE StudentInfo DROP COLUMN Grade;

/* Joins */

CREATE TABLE Student2(
Id INT PRIMARY KEY,
Name VARCHAR(50)
);

CREATE TABLE Course(
Id INT PRIMARY KEY,
Course VARCHAR(50)
);

INSERT INTO Student2(Id, Name)
VALUES
(101, "Adam"),
(102, "Bob"),
(103, "Casey");

INSERT INTO Course(Id, Course)
VALUES
(102, "English"),
(105, "Math"),
(103, "IT"),
(104, "Science");

SELECT * FROM Student2;

SELECT * FROM Course;

/* 	Inner Join 
Return records that have matching values in both the tables.
*/

SELECT * 
FROM Student2
INNER JOIN Course
ON Student2.Id = Course.Id;

/* Alias */

SELECT * 
FROM Student2 as s
INNER JOIN Course as c
ON s.Id = c.Id;

/* 	Outter Join
Left Join:
Returns all records from the left table, and the matched records from
the right table.
 */
 
 SELECT * 
 FROM Student2
 LEFT JOIN Course
 ON Student2.Id = Course.Id;
 
/* Right Join 
Returns all records from the table, and the matched records from the 
left table
*/

SELECT *
FROM Student2
RIGHT JOIN Course
ON Student2.Id = Course.Id;

/* Full Join 
Return all records when there is a match in either left or right
table
*/

SELECT * 
FROM Student2
LEFT JOIN Course
ON Student2.Id = Course.Id
UNION
SELECT * 
FROM Student2
RIGHT JOIN Course
ON Student2.Id = Course.Id;

/* Left Exclusive join */

SELECT *
FROM Student2 as s
LEFT JOIN Course as c
ON s.Id = c.Id
WHERE c.Id IS NULL;

/* Right Exclusive join */

SELECT *
FROM Student2 as s
RIGHT JOIN Course as c
ON s.Id = c.Id
Where s.Id IS NULL;

/* Full Exclusive join */

SELECT *
FROM Student2 as s
LEFT JOIN Course as c
ON s.Id = c.Id
WHERE c.Id IS NULL
UNION
SELECT *
FROM Student2 as s
RIGHT JOIN Course as c
ON s.Id = c.Id
Where s.Id IS NULL;

/* Self Join */

CREATE TABLE Employee(
Id INT PRIMARY KEY,
Name VARCHAR(50),
ManagerId INT
);

INSERT INTO Employee(Id, Name, ManagerId)
VALUES
(101, "Adam", 103),
(102, "Bob", 104),
(103, "Casey", NULL),
(104, "Donald", 103);

SELECT * FROM Employee;

SELECT a.Name as MangerName, b.Name
FROM Employee as a
JOIN Employee as b
ON a.Id = b.Id;

/* UINON 
Union:

It is used to combine the result-set of two or more SELECT statements.
Gives UNIQUE records.

To use it :
1. every SELECT should have same no. of columns
2. columns must have similar data types
3. columns in every SELECT should be in same order

*/

SELECT Name FROM Employee
UNION
SELECT Name FROM Employee;


SELECT Name FROM Employee
UNION ALL
SELECT Name FROM Employee;

/*
SQL Sub Queries

A Subquery or Inner query or a Nested query is a 
query within another SQL query.

It involves 2 select statements. 

*/

/*
Example

Get names of all students who scored more than class average.

Step 1. Find the avg of class —
Step 2. Find the names of students with marks > avg

*/
USE College;

SELECT * FROM StudentInfo;

SELECT AVG(Marks) FROM StudentInfo;

SELECT FullName, Marks 
FROM StudentInfo
WHERE Marks > 92.8;

/* SQL Sub Queries */

SELECT FullName, Marks 
FROM StudentInfo
WHERE Marks > (SELECT AVG(Marks) FROM StudentInfo);

SELECT * 
FROM StudentInfo
WHERE RollNo % 2 = 0;

SELECT FullName, Marks
FROM StudentInfo
WHERE RollNo IN (
SELECT RollNo 
FROM StudentInfo
WHERE RollNo % 2 = 0);

SELECT * FROM StudentInfo
WHERE City = "Delhi";

SELECT MAX(Marks)
FROM (SELECT * FROM StudentInfo
WHERE City = "Delhi") AS Temp;

SELECT (SELECT MAX(Marks) FROM StudentInfo), FullName
FROM StudentInfo;

/* MySQL Views 
A view is a virtual table based on the result-set of an SQL 
statement.
*/

CREATE VIEW View1 AS 
SELECT RollNo, FullName, Marks FROM StudentInfo;

SELECT * FROM View1;

SELECT * FROM View1 WHERE Marks > 80;






















