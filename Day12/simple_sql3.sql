create database empinfo;
use empinfo;
create table empy(
first char(20),
last char(20),
id varchar(10),
age int,
city varchar(20),
state char(20)
);
insert into empy values("A","B","100A1",20,"Pune","Mh");
insert into empy values("C","D","100A2",35,"mpl","Ap");
insert into empy values("E","F","100A3",28,"tpt","Ap");
insert into empy values("G","H","100A5",50,"Pune","Mh");
insert into empy values("I","J","100A6",48,"Dl","Hr");
insert into empy values("K","L","100A7",59,"cbi","Ka");
select *from empy;
select * from empy where age>30 and state="Mh";
select *from empy where age>30 or state="Hr";
select count(*) from empy;
select count(*) from empy where state="Ap";
select * from empy where age<50 and age>30;
select count(id) from empy;
select count(id) from empy where state="Ap";
select first,last,id,age,city,state from empy where age between 30 and 50;
select *from empy where id like "_0%";
select *from empy where id like "%1";
select *from empy where id like "%A%";

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

select count(*) from emp_loye;
select *from emp_loye;
select *from emp_loye where salary>80000;
update emp_loye set salary="55000" where first_name="kiran";

use empinfo;

set SQL_SAFE_UPDATES=0;

