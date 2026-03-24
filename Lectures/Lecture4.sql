-- Limit caluse is used to set the upper limit
USE College1;
SELECT * FROM College LIMIT 2;
-- oder by is used to sort the data in acsending or decending order 
SELECT * FROM College ORDER BY roll_no DESC;
-- Aggregare functions perform a calculation on a set of values, and return a single value.
SELECT MAX(marks) FROM College;
SELECT MIN(marks) FROM College;
SELECT AVG(marks) FROM College;
-- group by is used to group common name fromt he col.
SELECT City FROM College GROUP BY City;
SELECT City ,COUNT(marks) FROM College GROUP BY City;
-- HAVING clause is used to apply the condition on the groups 
SELECT City , COUNT(marks) FROM college GROUP BY City HAVING MAX(marks)>95;

-- TABLE RELATED QUERY
-- UPDATE is used to update the exixting row 
SET SQL_SAFE_UPDATES=0;
UPDATE College SET grad ="O" WHERE grad="A";
-- DELETE is used to delete the row which do not satisfy the condition 
DELETE FROM college WHERE marks<95;
DROP TABLE Project;
CREATE TABLE Project (
roll_no INT PRIMARY KEY,
Project VARCHAR(50),
FOREIGN KEY (roll_no) REFERENCES College(roll_no)
ON DELETE CASCADE
ON UPDATE CASCADE
);
-- cascading is used to update the col of both the table or delete 