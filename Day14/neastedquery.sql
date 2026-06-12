create database neastedquery;
use neastedquery;
create table nestquery(
customername char(20),
salary int);
insert into nestquery values("A",45000);
insert into nestquery values("B",25000);
insert into nestquery values("C",15000);
insert into nestquery values("D",55000);
insert into nestquery values("E",50000);

select *from nestquery;

select * from nestquery where salary > (select avg(salary) from nestquery);
select count(*) from nestquery where salary > (select salary from nestquery where customername="B");
select *from nestquery where salary= (select max(salary) from nestquery where salary < (select max(salary) from nestquery));






 

