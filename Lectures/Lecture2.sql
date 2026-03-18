-- IF NOT EXISTS is used if the table of tht name is already created then it will not create the table
CREATE DATABASE employee ; 
CREATE DATABASE IF NOT EXISTS employee;
-- to see all the databases SHOW DATABASES query is used 
SHOW DATABASES;
-- show tables is ued to see the tables 
USE College;
SELECT * FROM Students;
SHOW TABLES;
-- Intersting multiple values in table 
USE employee;
CREATE TABLE emp_data(
emp_id INT PRIMARY KEY,
name varchar(50),
age INT
);
INSERT INTO emp_data(emp_id,name,age) VALUE(
895,"Suyash Verma",21
),(964,"Kiran",21);
SELECT * FROM emp_data;
/*Practice Qs 1
Qs: Create a database for your company named XYZ.
Step 1: create a table inside this DB to store employee info (id, name and salary);
Step2 Add following information in the DB :
1, "adam", 25000
2, "bob", 30000
3, "casey", 40000
Step3: Select & view all your table data.*/
-- solution 
CREATE TABLE websnap(
id INT PRIMARY KEY,
NAME VARCHAR(50),
salery INT
);
INSERT INTO websnap(id , NAME, salery) VALUES (001,"adam",25000),(002,"bob",30000),(003,"casery",400000);
SELECT * FROM websnap;
