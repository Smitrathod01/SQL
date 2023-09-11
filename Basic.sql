create database temp;
create database IF NOT EXISTS temp;

create database temp1;
drop database temp1;
drop database IF EXISTS temp1;

SHOW DATABASES;
SHOW TABLES;

use temp;

create table student(
id INT PRIMARY KEY,
name VARCHAR(20),
age INT NOT NULL
-- PRIMARY KEY (id,name)
);
-- NOT NULL,UNIQUE , ARE OTHER CONSTRAINTS

INSERT INTO student VALUES(1,"smit",20);
INSERT INTO student VALUES(2,"rathod",21);

select * from student;

DROP TABLE student;
 