<-- transaction control -->

mysql> create database Demo;
Query OK, 1 row affected (0.00 sec)

mysql> Use Demo;
Database changed
mysql> create table Students (sid integer , sname varchar(30) , age integer , course varchar(30));
Query OK, 0 rows affected (0.01 sec)

mysql> insert into students values(1,'sid',21,'Java'),(2,'sam',25,'mysql'),(3 ,'sandy',21,'flutter'),(4,'bhushan',24,'python');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> insert into students values (5,'dk',27,'data');
Query OK, 1 row affected (0.00 sec)

mysql> rollback;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from students;
+------+---------+------+---------+
| sid  | sname   | age  | course  |
+------+---------+------+---------+
|    1 | sid     |   21 | Java    |
|    2 | sam     |   25 | mysql   |
|    3 | sandy   |   21 | flutter |
|    4 | bhushan |   24 | python  |
|    5 | dk      |   27 | data    |
+------+---------+------+---------+
5 rows in set (0.00 sec)

mysql> set autocommit  = 0; <-- auto commit off -->
Query OK, 0 rows affected (0.00 sec)

mysql> insert into students values (6,'mac',34,'DBMS');
Query OK, 1 row affected (0.00 sec)

mysql> insert into students values (7,'maggy',21,'DBD');
Query OK, 1 row affected (0.00 sec)

mysql> rollback;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from students;
+------+---------+------+---------+
| sid  | sname   | age  | course  |
+------+---------+------+---------+
|    1 | sid     |   21 | Java    |
|    2 | sam     |   25 | mysql   |
|    3 | sandy   |   21 | flutter |
|    4 | bhushan |   24 | python  |
|    5 | dk      |   27 | data    |
+------+---------+------+---------+
5 rows in set (0.00 sec)

mysql> insert into students values (6,'mac',34,'DBMS');
Query OK, 1 row affected (0.00 sec)

mysql> insert into students values (7,'maggy',21,'DBD');
Query OK, 1 row affected (0.00 sec)

mysql> select * from students;
+------+---------+------+---------+
| sid  | sname   | age  | course  |
+------+---------+------+---------+
|    1 | sid     |   21 | Java    |
|    2 | sam     |   25 | mysql   |
|    3 | sandy   |   21 | flutter |
|    4 | bhushan |   24 | python  |
|    5 | dk      |   27 | data    |
|    6 | mac     |   34 | DBMS    |
|    7 | maggy   |   21 | DBD     |
+------+---------+------+---------+
7 rows in set (0.00 sec)

mysql> rollback;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from students;
+------+---------+------+---------+
| sid  | sname   | age  | course  |
+------+---------+------+---------+
|    1 | sid     |   21 | Java    |
|    2 | sam     |   25 | mysql   |
|    3 | sandy   |   21 | flutter |
|    4 | bhushan |   24 | python  |
|    5 | dk      |   27 | data    |
+------+---------+------+---------+
5 rows in set (0.00 sec)

mysql> set autocommit =1;  <-- Auto commit ON-->
Query OK, 0 rows affected (0.00 sec)

mysql>

 <-- New table -->

 mysql> create table tt(id char);
Query OK, 0 rows affected (0.02 sec)

mysql> insert into tt values('a');
Query OK, 1 row affected (0.00 sec)

mysql> insert into tt values('b');
Query OK, 1 row affected (0.00 sec)

mysql> select * from tt;
+------+
| id   |
+------+
| a    |
| b    |
+------+
2 rows in set (0.00 sec)

mysql> rollback;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from tt;
+------+
| id   |
+------+
| a    |
| b    |
+------+
2 rows in set (0.00 sec)

mysql> start transaction;     <-- auto commit OFF-->
Query OK, 0 rows affected (0.00 sec)

mysql> insert into tt values('c');
Query OK, 1 row affected (0.00 sec)

mysql> insert into tt values('d');
Query OK, 1 row affected (0.00 sec)

mysql> rollback;  <-- Auto commit ON-->
Query OK, 0 rows affected (0.01 sec)

mysql> select * from tt;
+------+
| id   |
+------+
| a    |
| b    |
+------+
2 rows in set (0.00 sec)

mysql> insert into tt values('D');
Query OK, 1 row affected (0.00 sec)

mysql> rollback;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from tt;
+------+
| id   |
+------+
| a    |
| b    |
| D    |
+------+
3 rows in set (0.00 sec)



<-- anthor method to rollback using savepoint -->
]
mysql> select * from tt;
Empty set (0.00 sec)

mysql> start transaction;
Query OK, 0 rows affected (0.00 sec)

mysql> insert into tt values ('a');
Query OK, 1 row affected (0.00 sec)

mysql> insert into tt values ('b');
Query OK, 1 row affected (0.00 sec)

mysql> savepoint sb;
Query OK, 0 rows affected (0.00 sec)

mysql> insert into tt values ('c');
Query OK, 1 row affected (0.00 sec)

mysql> insert into tt values ('d');
Query OK, 1 row affected (0.00 sec)

mysql> savepoint sd;
Query OK, 0 rows affected (0.00 sec)

mysql> insert into tt values ('e');
Query OK, 1 row affected (0.00 sec)

mysql> insert into tt values ('f');
Query OK, 1 row affected (0.00 sec)

mysql> select * from tt;
+------+
| id   |
+------+
| a    |
| b    |
| c    |
| d    |
| e    |
| f    |
+------+
6 rows in set (0.00 sec)

mysql> rollback to sd;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from tt;
+------+
| id   |
+------+
| a    |
| b    |
| c    |
| d    |
+------+
4 rows in set (0.00 sec)

mysql> rollback to sd;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from tt;
+------+
| id   |
+------+
| a    |
| b    |
| c    |
| d    |
+------+
4 rows in set (0.00 sec)

mysql> rollback to sb;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from tt;
+------+
| id   |
+------+
| a    |
| b    |
+------+
2 rows in set (0.00 sec)

mysql> commit;
Query OK, 0 rows affected (0.00 sec)

mysql> insert into tt values ('f');
Query OK, 1 row affected (0.00 sec)

mysql> select * from tt;
+------+
| id   |
+------+
| a    |
| b    |
| f    |
+------+
3 rows in set (0.00 sec)

mysql> rollback;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from tt;
+------+
| id   |
+------+
| a    |
| b    |
| f    |
+------+
3 rows in set (0.00 sec)

mysql>





