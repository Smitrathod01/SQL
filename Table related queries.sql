use student;

create table stud(
id INT PRIMARY KEY,
name VARCHAR(10),
marks INT DEFAULT 33,
city VARCHAR(20),
age INT NOT NULL
);

INSERT INTO stud values
(101,'abc',67,'ahmd',21),
(102,'def',73,'rajkot',22),
(103,'ghi',89,'bharuch',25),
(104,'kil',99,'surat',23),
(105,'gil',79,'ahmd',22),
(106,'res',65,'surat',21),
(107,'vos',55,'rajkot',21);

select * from stud;

UPDATE stud 
SET MARKS=95
WHERE id=104;
-- SET SQL_SAFE_UPDATES = 0; if update gives warning

UPDATE stud
SET marks=marks+1; -- all marks get updated

DELETE FROM stud
WHERE marks<66;

ALTER TABLE student
ADD COLUMN grade VARCHAR(10) NOT NULL DEFAULT 'D';

ALTER TABLE student
DROP COLUMN GRADE;

ALTER TABLE student
RENAME TO info;

ALTER TABLE student
CHANGE age ages INT; -- RENAME

ALTER TABLE student
MODIFY name VARCHAR(15);

TRUNCATE TABLE stud; -- it will remove the data while drop delete wholw table

