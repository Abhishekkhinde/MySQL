
mysql> create database library;
Query OK, 1 row affected (0.00 sec)

mysql> use library;
Database changed
mysql> create table authors(authorid integer PRIMARY KEY , name varchar(30));
Query OK, 0 rows affected (0.02 sec)

mysql> create table books(bookid integer PRIMARY KEY , title varchar(254),aid integer,
    -> FOREIGN KEY(aid) REFERENCES authors(authorid)
    -> ON DELETE CASCADE
    -> ON UPDATE CASCADE);
Query OK, 0 rows affected (0.02 sec)

mysql> desc authors;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| authorid | int         | NO   | PRI | NULL    |       |
| name     | varchar(30) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> desc books;
+--------+--------------+------+-----+---------+-------+
| Field  | Type         | Null | Key | Default | Extra |
+--------+--------------+------+-----+---------+-------+
| bookid | int          | NO   | PRI | NULL    |       |
| title  | varchar(254) | YES  |     | NULL    |       |
| aid    | int          | YES  | MUL | NULL    |       |
+--------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into authors values(1,'j k Rowling');
Query OK, 1 row affected (0.01 sec)

mysql> insert into authors values (2,'Thomas Hardy'),(3 ,'Oscar Wiles'),
    -> (4 , 'Sidney Sheldon'),
    -> (5 , 'Alistair Maclearn'),
    -> (6 , 'Jane Austen'),
    -> (7 , 'Chetan Bhagat'),
    -> (8 , 'Oscar Wilde');
Query OK, 7 rows affected (0.00 sec)
Records: 7  Duplicates: 0  Warnings: 0

mysql> insert into books values (1, 'harry potter and the philosopher', 4);
Query OK, 1 row affected (0.01 sec)

mysql> insert into books values (2, 'harry potter and the chamber', 4);
Query OK, 1 row affected (0.00 sec)

mysql> insert into books values (3, 'harry potter and the Half-Blood Prince', 4);
Query OK, 1 row affected (0.00 sec)

mysql> insert into books values (4, 'harry potter and the Goblet of fire', 3);
Query OK, 1 row affected (0.00 sec)

mysql> insert into books values (5, 'Night Without End', 5);
Query OK, 1 row affected (0.00 sec)

mysql> insert into books values (6, 'faer is the key', 5);
Query OK, 1 row affected (0.00 sec)

mysql> insert into books values (7, 'where Eagles Dare', 5);
Query OK, 1 row affected (0.00 sec)

mysql> insert into books values (8, 'Sense and sensibility', 6);
Query OK, 1 row affected (0.00 sec)

mysql> insert into books values (9, 'Pride and Prejudies', 6);
Query OK, 1 row affected (0.00 sec)

mysql> insert into books values (10, 'Emma', 6);
Query OK, 1 row affected (0.00 sec)

mysql> insert into books values (11, 'Five point Someone', 7);
Query OK, 1 row affected (0.00 sec)

mysql> insert into books values (12, 'the state', 7);
Query OK, 1 row affected (0.00 sec)

mysql> insert into books values (13, 'salome', 8);
Query OK, 1 row affected (0.00 sec)

mysql> insert into books values (14, 'The happy princes', 8);
Query OK, 1 row affected (0.00 sec)

mysql> select * from books;
+--------+----------------------------------------+------+
| bookid | title                                  | aid  |
+--------+----------------------------------------+------+
|      1 | harry potter and the philosopher       |    4 |
|      2 | harry potter and the chamber           |    4 |
|      3 | harry potter and the Half-Blood Prince |    4 |
|      4 | harry potter and the Goblet of fire    |    3 |
|      5 | Night Without End                      |    5 |
|      6 | faer is the key                        |    5 |
|      7 | where Eagles Dare                      |    5 |
|      8 | Sense and sensibility                  |    6 |
|      9 | Pride and Prejudies                    |    6 |
|     10 | Emma                                   |    6 |
|     11 | Five point Someone                     |    7 |
|     12 | the state                              |    7 |
|     13 | salome                                 |    8 |
|     14 | The happy princes                      |    8 |
+--------+----------------------------------------+------+
14 rows in set (0.00 sec)

mysql> select * from authors;
+----------+-------------------+
| authorid | name              |
+----------+-------------------+
|        1 | j k Rowling       |
|        2 | Thomas Hardy      |
|        3 | Oscar Wiles       |
|        4 | Sidney Sheldon    |
|        5 | Alistair Maclearn |
|        6 | Jane Austen       |
|        7 | Chetan Bhagat     |
|        8 | Oscar Wilde       |
+----------+-------------------+
8 rows in set (0.00 sec)

mysql> select * from books;
+--------+----------------------------------------+------+
| bookid | title                                  | aid  |
+--------+----------------------------------------+------+
|      1 | harry potter and the philosopher       |    4 |
|      2 | harry potter and the chamber           |    4 |
|      3 | harry potter and the Half-Blood Prince |    4 |
|      4 | harry potter and the Goblet of fire    |    3 |
|      5 | Night Without End                      |    5 |
|      6 | faer is the key                        |    5 |
|      7 | where Eagles Dare                      |    5 |
|      8 | Sense and sensibility                  |    6 |
|      9 | Pride and Prejudies                    |    6 |
|     10 | Emma                                   |    6 |
|     11 | Five point Someone                     |    7 |
|     12 | the state                              |    7 |
|     13 | salome                                 |    8 |
|     14 | The happy princes                      |    8 |
+--------+----------------------------------------+------+
14 rows in set (0.00 sec)

mysql> delete from authors where authorid =1;
Query OK, 1 row affected (0.01 sec)

mysql> select * from authors;
+----------+-------------------+
| authorid | name              |
+----------+-------------------+
|        2 | Thomas Hardy      |
|        3 | Oscar Wiles       |
|        4 | Sidney Sheldon    |
|        5 | Alistair Maclearn |
|        6 | Jane Austen       |
|        7 | Chetan Bhagat     |
|        8 | Oscar Wilde       |
+----------+-------------------+
7 rows in set (0.00 sec)

mysql> select * from books;
+--------+----------------------------------------+------+
| bookid | title                                  | aid  |
+--------+----------------------------------------+------+
|      1 | harry potter and the philosopher       |    4 |
|      2 | harry potter and the chamber           |    4 |
|      3 | harry potter and the Half-Blood Prince |    4 |
|      4 | harry potter and the Goblet of fire    |    3 |
|      5 | Night Without End                      |    5 |
|      6 | faer is the key                        |    5 |
|      7 | where Eagles Dare                      |    5 |
|      8 | Sense and sensibility                  |    6 |
|      9 | Pride and Prejudies                    |    6 |
|     10 | Emma                                   |    6 |
|     11 | Five point Someone                     |    7 |
|     12 | the state                              |    7 |
|     13 | salome                                 |    8 |
|     14 | The happy princes                      |    8 |
+--------+----------------------------------------+------+
14 rows in set (0.00 sec)

mysql> delete from authors where authorid = 4;
Query OK, 1 row affected (0.00 sec)

mysql> select * from authors;
+----------+-------------------+
| authorid | name              |
+----------+-------------------+
|        2 | Thomas Hardy      |
|        3 | Oscar Wiles       |
|        5 | Alistair Maclearn |
|        6 | Jane Austen       |
|        7 | Chetan Bhagat     |
|        8 | Oscar Wilde       |
+----------+-------------------+
6 rows in set (0.00 sec)

mysql> select * from books;
+--------+-------------------------------------+------+
| bookid | title                               | aid  |
+--------+-------------------------------------+------+
|      4 | harry potter and the Goblet of fire |    3 |
|      5 | Night Without End                   |    5 |
|      6 | faer is the key                     |    5 |
|      7 | where Eagles Dare                   |    5 |
|      8 | Sense and sensibility               |    6 |
|      9 | Pride and Prejudies                 |    6 |
|     10 | Emma                                |    6 |
|     11 | Five point Someone                  |    7 |
|     12 | the state                           |    7 |
|     13 | salome                              |    8 |
|     14 | The happy princes                   |    8 |
+--------+-------------------------------------+------+
11 rows in set (0.00 sec)

mysql> update authors set authorid = 80 where authorid =8;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from authors;
+----------+-------------------+
| authorid | name              |
+----------+-------------------+
|        2 | Thomas Hardy      |
|        3 | Oscar Wiles       |
|        5 | Alistair Maclearn |
|        6 | Jane Austen       |
|        7 | Chetan Bhagat     |
|       80 | Oscar Wilde       |
+----------+-------------------+
6 rows in set (0.00 sec)

mysql> select * from books;
+--------+-------------------------------------+------+
| bookid | title                               | aid  |
+--------+-------------------------------------+------+
|      4 | harry potter and the Goblet of fire |    3 |
|      5 | Night Without End                   |    5 |
|      6 | faer is the key                     |    5 |
|      7 | where Eagles Dare                   |    5 |
|      8 | Sense and sensibility               |    6 |
|      9 | Pride and Prejudies                 |    6 |
|     10 | Emma                                |    6 |
|     11 | Five point Someone                  |    7 |
|     12 | the state                           |    7 |
|     13 | salome                              |   80 |
|     14 | The happy princes                   |   80 |
+--------+-------------------------------------+------+
11 rows in set (0.00 sec)

mysql>


