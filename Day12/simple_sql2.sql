create database emp;
use emp;
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
