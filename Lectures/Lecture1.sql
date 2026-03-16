-- Creating first database
CREATE DATABASE College;
CREATE DATABASE Section;
-- Deleting database 
DROP database Section;
-- Using the corrent database 
USE College;
-- Creating first Table
CREATE TABLE Students(
id INT primary KEY,
Name VARCHAR(50),
age INT NOT NULL
);
-- inserting data into table 
INSERT INTO Students VALUES(257,"Suyash Verma",21);
-- To see the table
SELECT * FROM Students;