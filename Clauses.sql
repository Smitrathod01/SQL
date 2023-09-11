CREATE DATABASE IF NOT EXISTS student;

use student;

create table student(
roll_no INT PRIMARY KEY,
age INT NOT NULL,
city VARCHAR(20),
marks INT DEFAULT 33
);

-- INSERT INTO student values
-- (1,20,'rajkot',45),
-- (2,21,'ahmd',56),
-- (3,21,'rajkot',67);

INSERT INTO student values
(4,22,'surat',90),
(5,23,'memnagar',85),
(6,20,'bharuch',76);

SELECT city,age from student;
SELECT DISTINCT City from student;

SELECT * FROM STUDENT
WHERE age>20;

SELECT * FROM STUDENT
WHERE city="ahmd";

-- operators
-- 1.arithmetic
-- 2.logical
-- 3.bitwise
-- 4.comparison

SELECT * FROM STUDENT
WHERE age>20 AND city="ahmd"; -- OR IS ANOTHER ONE

SELECT * FROM STUDENT
WHERE marks between 60 and 70 ;

SELECT * FROM STUDENT
WHERE city in ('rajkot','ahmd'); -- NOT IN ANOTHER ONE

SELECT * FROM student LIMIT 2;

SELECT * FROM STUDENT
ORDER BY city ASC; -- marks DESC or ASC any u can choose

-- aggregrate functions returns only one value from whole
-- count
-- avg
-- sum
-- min
-- max

SELECT avg(marks) from student; -- use any

SELECT city,count(roll_no) FROM student
GROUP BY city; -- gives the count of nos of stud in each city

SELECT city,count(roll_no) FROM student
GROUP BY city
ORDER BY AVG(marks); -- each city avg of stud marks arrange

-- HAVING clause used when we are using grouping

select count(roll_no),city from student
GROUP BY city
HAVING max(marks) >60;

-- general order
-- SELECT
-- FROM
-- WHERE
-- GROUP BY
-- HAVING
-- ORDER BY
