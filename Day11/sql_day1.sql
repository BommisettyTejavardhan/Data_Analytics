create database college;
use college;
create table students(roll_number varchar(20) primary key,student_name char(20),student_year int);
insert into students values("1000A1","A",2);
insert into students values("1000A2","B",3);
insert into students values("1000A3","C",4);
select * from students;
create table departent(dep_id varchar(10) primary key,roll_number varchar(10) ,dep_name varchar(10),foreign key(roll_number) references students(roll_number));
insert into departent values("101","1000A1","cse");
insert into departent values("102","1000A2","cse(ai)");
insert into departent values("103","1000A3","cse(aiml)");
select *from departent;


