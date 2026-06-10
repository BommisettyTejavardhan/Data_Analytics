create database company;
use company;
create table compy
(
emp_id varchar(10),
firstname char(10),
lastname char(10),
age int,
salary int
);
insert into compy values("100A1","A","AB",20,10000);
insert into compy values("100A2","C","CD",50,10000);
insert into compy values("100A3","E","EF",40,10000);
insert into compy values("100A4","G","GH",70,10000);
insert into compy values("100A5","I","IJ",36,10000);
select *from compy;
alter table compy add primary key(emp_id);
alter table compy rename column emp_id to employee_id;
update compy set salary=250000 where employee_id="100A2";
update compy set salary=25000 where employee_id="100A2";
alter table compy modify column firstname char(10) not null;
insert into compy values(null,"Y","YZ",87,67000);
delete from compy where firstname="Y";






