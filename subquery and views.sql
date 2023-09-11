use student;

select * from stud;

select name,marks from stud -- will get the name of students who scored more than the avg marks
where marks > ( select avg(marks) from stud); 

select name from stud where id %2 =0;  -- even rolnos
-- or
select name from stud
where id in (
select id from stud where id % 2 = 0
);

-- find max marks from the students of rajkot
select max(marks) 
from (select * from stud where city = 'rajkot') as temp;
-- or
select max(marks) from stud where city = 'delhi';

select (select max(marks) from stud),name from stud; -- this is eg of how subquery is used

-- views allow to see only a particuylatr amount of informaion

create view views as 
select id,name,marks from stud;

select * from views;

select * from views where marks >80;
