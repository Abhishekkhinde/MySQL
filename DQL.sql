-- DQL 
-- select


show databases;

create database learndb; -- create command

use learndb;

create table students(Sid int , Sname varchar(30) , Age int , Course varchar(30)); -- create command

insert into students values (101 , 'bhushan', 24, 'data science'),
							(102,'sujata',26,'Bsc'),
							(103,'sandy',21,'Btech'),
                            (104,'gaurav',24,'Bsc');
                            
select * from students ;            