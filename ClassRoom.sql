create database Temp1;

create database Temp2;

CREATE DATABASE College;

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




