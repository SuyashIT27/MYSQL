-- JOINTS IN SQL
-- Joints in sql are used to combine tow or more rows from different table based on related column between them 
-- it is not neccersey that joints have foreign key 
-- Inner join , left join , right join , full join
CREATE DATABASE Joints;
use Joints;
CREATE TABLE Join1(
roll_no INT PRIMARY KEY,
name VARCHAR(50)
);
DROP TABLE Join2;
CREATE TABLE Join2(
roll_no INT PRIMARY KEY,
course VARCHAR(50)
);
INSERT INTO Join1 VALUE 
(254,"Suyash"),(257,"Aditya"),(127,"Kajal");
INSERT INTO Join2 value
(254,"Physics"),(257,"Art");
--  INNER JOIN
SELECT * FROM Join1 INNER JOIN Join2 ON Join1.roll_no=join2.roll_no;

-- LEFT JOIN
SELECT * FROM Join1 LEFT JOIN Join2 ON Join1.roll_no=Join2.roll_no;

-- RIGHT JOIN
SELECT * FROM Join1 RIGHT JOIN Join2 ON Join1.roll_no=Join2.roll_no;

-- FULL JOIN 
SELECT * FROM Join1 LEFT JOIN Join2 ON Join1.roll_no=Join2.roll_no UNION SELECT * FROM Join1 RIGHT JOIN Join2 ON Join1.roll_no=Join2.roll_no;

-- LEFT EXCLUSIVE JOIN 
SELECT * FROM Join1 LEFT JOIN Join2 ON Join1.roll_no=Join2.roll_no WHERE Join2.roll_no IS NULL; 

-- RIGHT EXCLUSIVE JOIN 
SELECT * FROM Join1 RIGHT JOIN Join2 ON Join1.roll_no=Join2.roll_no WHERE Join1.roll_no IS NULL;

-- UNION 
SELECT * FROM Join1 UNION SELECT * FROM Join2;