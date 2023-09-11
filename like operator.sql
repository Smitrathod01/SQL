use student;

select * from stud;

-- % represents zero or more while _ only one

select * from stud
where city like 'a%'; -- starts with a

select * from stud
where city like 'bhar___'; -- contains bhar and 3 letter any

select * from stud
where city like '%ra%'; -- contains ra as a substring

select * from stud
where city like '_r%'; -- second letter r

select * from stud
where city like 'a__%'; -- starts with a and atleast 3 chars

select * from stud
where city like 'a%d'; -- starts with a ends with d