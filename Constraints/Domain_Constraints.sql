show databases;

create database students;

use students;

create table students (sid integer unique, sname varchar(30) not null, age integer check(age >18),course varchar(30));

insert into students values (1,'john',34,'Mysql');

select *from students ;

insert into students values (2,'john',34,'Mysql');

insert into students values (3,'king',20,'analysis');

insert into students values (4,'mac',24,'math');

select * from students;

alter table students modify column sname varchar(30) NOT NULL Default 'kumar';

select * from students;

insert into  students (sid ,age, course )values (6,28,'bio');

select * from students ;

insert into  students (sid ,age, course )values (5,28,'bio'); 

select * from students ;