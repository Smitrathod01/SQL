create database con;

use con;

create table constrain(
id INT PRIMARY KEY,
name VARCHAR(20),
age INT NOT NULL
-- PRIMARY KEY (id,name) combination of columns
);
-- NOT NULL,UNIQUE , ARE OTHER CONSTRAINTS

create table city(
id INT PRIMARY KEY,
name varchar(20)
);

insert into city
values
(1,'pune'),
(2,'ahmd');

create table stud(
id INT primary key,
name VARCHAR(10),
cityid INT ,
foreign key(cityid ) references city(id)
ON DELETE CASCADE
ON UPDATE CASCADE
);

-- CASCADE will help to update and delete from another table if we chang the primary

insert into stud
values
(1,'XYZ',2),
(2,'ABC',1),
(3,'DEF',2)

-- salary INT default 25000 /for default value