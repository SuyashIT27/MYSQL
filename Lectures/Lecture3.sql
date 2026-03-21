CREATE DATABASE Lecture3;
USE  Lecture3;
CREATE TABLE Student(
rollNo INT PRIMARY KEY,
id INT UNIQUE);
-- unique help to avoid duplicy 

INSERT INTO Student VALUE (257 , 55);
-- THIS WILL SHOW DUBLICATE ENTITY
INSERT INTO  Student VALUE (258,55); 
-- another way to make primary key is PRIMARY KEY (variable name )
-- to make multiple column is the primary key PRIMARY KEY(VAR1,VAR2);
CREATE TABLE Teacher (
id INT NOT NULL,
name VARCHAR(50) ,
phoneno INT ,
PRIMARY KEY(ID,PHONENO)
);
-- To make the foreign key write FOREIGN KEY (colName) reference tablename(colname);
-- DEFAULT IS used to set the defaut value of the variable 
CREATE TABLE Worker(
id INT PRIMARY KEY,
PhoneNO INT CONSTRAINT check(PhoneNo=10),
Name VARCHAR(50) ,
FOREIGN KEY (id , PhoneNO) REFERENCES Teacher(id,phoneno));
Drop TABLE Worker;
-- CONSTRAINTS are used to set the limit for the variable 
CREATE DATABASE College1;
USE College1;
CREATE TABLE College (
roll_no INT PRIMARY KEY,
marks INT ,
grad VARCHAR(1),
city VARCHAR(20)
);
INSERT INTO  College VALUE (100,95,'a',"Lucknow"),(105,95,'a',"Lucknow"), (101,96,'A',"Lucknow"),(103,97,'A',"Lucknow");
SELECT * FROM College;
-- SELECT is used to select any data from the database 
-- Sytex SELECT col1,col2....coln FROM table name; or SELECT * FROM TABLE;
-- DISCINT is used to remove dublicate data 
SELECT roll_no , grad FROM College ;
-- clauses are used to define the condition 
SELECT * FROM College WHERE marks>95;
