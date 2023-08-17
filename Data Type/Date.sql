-- date  Data type 

show databases;

create database learndb;
use learndb;

create table students (_date date, _datetime datetime, _timestamp timestamp, _time time , _year year);

insert into students values ('2002-01-01' ,'2023-05-07 12:12:23' , '2023-06-04 12:34:22','05:03:02','2024');

select * from students;

/*
date = it store date in 'yyyy-mm-dd' format
date time = it store date and time in "yyyy-mm-dd hh:mm:ss" format
time stamp = it store date time in "yyyy-mm-dd hh:mm:ss" format
time = it store time in hh:mm:ss format
year = it store years in 'yyyy' format
*/