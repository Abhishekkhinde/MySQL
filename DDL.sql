show databases;

create database learndb; -- create command

use learndb;

create table students(Sid int , Sname varchar(30) , Age int , Course varchar(30)); -- create command

insert into students values(101 , 'bhushan', 24, 'data science');

insert into students values (102,'sujata',26,'Bsc'),
							(103,'sandy',21,'Btech'),
                            (104,'gaurav',24,'Bsc'); 
                            
alter table students add marks int;   -- add marks table 
alter table students drop marks;    -- removed marks table 
alter table students modify age float;
alter table students modify age int not null;

alter table students change sid std_id int;  -- change column name  sid to std_id 
alter table students rename students1 ;  -- rename  table students to students1

rename table  students1 to students ;   -- rename table students1 to students 

truncate students ;  -- delete all record from from students 
drop table students;   --  table removed from database 
drop database learndb;  -- database deleted     
                       