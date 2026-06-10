create database emp;
use emp;
create table empy
(
first_name varchar(20),
last_name varchar(10),
title varchar(10),
age int,
salary int
);
desc empy;
alter table empy add gender char(5);
alter table empy add random varchar(1);
alter table empy drop column random;





