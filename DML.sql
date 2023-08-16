/* Insert
   Update
   Delete
*/

show databases;

create database learndb; -- create command

use learndb;

create table students(Sid int , Sname varchar(30) , Age int , Course varchar(30)); -- create command

insert into students values(101 , 'bhushan', 24, 'data science');

insert into students values (102,'sujata',26,'Bsc'),
							(103,'sandy',21,'Btech'),
                            (104,'gaurav',24,'Bsc'); 
                            
insert into students (Sid,Sname,Age,Course) values (105,"Sachin",25,"bcom");						


update students set Sname ='thomas' where Sid = 101;   -- update 

delete from students where  sid = 101; -- delete 1 record 
delete from students;  -- delete all record from teble 


                        

