use temp;

create table people(
id INT PRIMARY KEY,
name VARCHAR(20)
);

INSERT INTO people VALUES
(101,'bob'),
(102,'pop'),
(103,'bootr');

CREATE TABLE course(
id INT,
course VARCHAR(20)
);

INSERT INTO course VALUES
(102,'ENGLISH'),
(104,'MATH'),
(103,'SCIENCE'),
(107,'CSE');

select * 
FROM people
INNER JOIN course
ON people.id=course.id;

select * 
FROM people
LEFT JOIN course
ON people.id=course.id;

select * 
FROM people
RIGHT JOIN course
ON people.id=course.id;

select * 
FROM people
LEFT JOIN course
ON people.id=course.id
UNION  -- full join
select * 
FROM people
RIGHT JOIN course
ON people.id=course.id;

select * 
FROM people AS a
LEFT JOIN course AS b
ON a.id=b.id
WHERE b.id = NULL;  -- LEFT EXCLUSIVE JOIN A-B, a.id=null will right exclusive

CREATE TABLE employee(
id INT,
name VARCHAR(10),
manager_id INT
);

INSERT INTO employee VALUES
(101,'ADAM',103),
(102,'BOB',104),
(103,'CASEY',NULL),
(104,'DONALD',103);

select a.name,b.name 
FROM employee as a
join employee as b
ON a.id = b.manager_id; -- right to left right one is mmanager of left one  it is self join