create database agreegate;
use agreegate;
create table emp_loye
(
first_name char(10),
last_name char(10),
designation char(10),
age int,
salary float
);
insert into emp_loye values("kiran","ji","seceratary",25,25000.00);
insert into emp_loye values("mohith","don","NIA",38,90000.00);
insert into emp_loye values("anjith","kumar","ITOfficer",50,86000.00);
insert into emp_loye values("teja","vardhan","MEA",40,76000.00);
insert into emp_loye values("Mouriya","kota","GSTInp",32,85000.00);
insert into emp_loye values("Anath","bhai","ED",46,120000.00);
insert into emp_loye values("Anath","don","ITofficer",36,25000.00);
select *from emp_loye;

select count(*) from emp_loye;
select sum(salary) from emp_loye;
select count(*) from emp_loye group by first_name="Anath";


