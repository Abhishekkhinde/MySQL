-- charecter datatype

show databases;

create database learndb;
use learndb;

create table students (sname char(30), subject varchar(30));  -- char and varchar store charecter variable 

insert into students values ('sandy' , 'science');

select * from students;
