mysql> mysql> alter table jeu add (score int )
    -> ^C
mysql> mysql> alter table jeu add (score int );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'mysql> alter table jeu add (score int )' at line 1
mysql> desc jeu;
+---------+------+------+-----+---------+-------+
| Field   | Type | Null | Key | Default | Extra |
+---------+------+------+-----+---------+-------+
| id_jeu  | int  | NO   | PRI | NULL    |       |
| date    | date | NO   |     | NULL    |       |
| heured  | time | NO   |     | NULL    |       |
| heurf   | time | NO   |     | NULL    |       |
| user_id | int  | NO   | MUL | NULL    |       |
+---------+------+------+-----+---------+-------+
5 rows in set (0,00 sec)

mysql>  alter table jeu add (score int );
Query OK, 0 rows affected (0,02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc jeu

mysql> desc jeu;
+---------+------+------+-----+---------+-------+
| Field   | Type | Null | Key | Default | Extra |
+---------+------+------+-----+---------+-------+
| id_jeu  | int  | NO   | PRI | NULL    |       |
| date    | date | NO   |     | NULL    |       |
| heured  | time | NO   |     | NULL    |       |
| heurf   | time | NO   |     | NULL    |       |
| user_id | int  | NO   | MUL | NULL    |       |
| score   | int  | YES  |     | NULL    |       |
+---------+------+------+-----+---------+-------+
6 rows in set (0,00 sec)

mysql> Alter Table NomTable
    -> ^C
mysql> use table user
ERROR 1049 (42000): Unknown database 'table'
mysql> desc user
    -> ^C
mysql> desc user;*
+---------+-------------+------+-----+---------+----------------+
| Field   | Type        | Null | Key | Default | Extra          |
+---------+-------------+------+-----+---------+----------------+
| nom     | varchar(10) | YES  |     | NULL    |                |
| prenom  | varchar(30) | YES  |     | NULL    |                |
| login   | varchar(20) | YES  |     | NULL    |                |
| pass    | varchar(10) | YES  |     | NULL    |                |
| rol     | varchar(10) | YES  |     | NULL    |                |
| id_user | int         | NO   | PRI | NULL    | auto_increment |
+---------+-------------+------+-----+---------+----------------+
6 rows in set (0,00 sec)

    -> Alter Table NomTable
    -> ^C
mysql> alter table user rename pass to password
    -> ^C
mysql> Alter Table user rename pass to password;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'to password' at line 1
mysql> Alter Table NomTable
    -> Rename Column pass TO password
    -> ;
exist
mysql> Alter Table NomTable
    
mysql> Alter Table user
    -> Rename column pass TO password;
Query OK, 0 rows affected (0,03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> des user
    -> ^C
mysql> des user;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'des user' at line 1
mysql> desc user;
+----------+-------------+------+-----+---------+----------------+
| Field    | Type        | Null | Key | Default | Extra          |
+----------+-------------+------+-----+---------+----------------+
| nom      | varchar(10) | YES  |     | NULL    |                |
| prenom   | varchar(30) | YES  |     | NULL    |                |
| login    | varchar(20) | YES  |     | NULL    |                |
| password | varchar(10) | YES  |     | NULL    |                |
| rol      | varchar(10) | YES  |     | NULL    |                |
| id_user  | int         | NO   | PRI | NULL    | auto_increment |
+----------+-------------+------+-----+---------+----------------+
6 rows in set (0,00 sec)


mysql> desc user;
+----------+-------------+------+-----+---------+----------------+
| Field    | Type        | Null | Key | Default | Extra          |
+----------+-------------+------+-----+---------+----------------+
| nom      | varchar(10) | YES  |     | NULL    |                |
| prenom   | varchar(30) | YES  |     | NULL    |                |
| login    | varchar(20) | YES  |     | NULL    |                |
| password | varchar(10) | YES  |     | NULL    |                |
| rol      | varchar(10) | YES  |     | NULL    |                |
| id_user  | int         | NO   | PRI | NULL    | auto_increment |
+----------+-------------+------+-----+---------+----------------+
6 rows in set (0,00 sec)

mysql> insert into user
    -> values(Modou, samba, mouhamed);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into user values(modou, papa);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into user (nom, prenom, login password,rol, id_user) values (faye,mouhamed, fay@gmail.com,joueur,0);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'password,rol, id_user) values (faye,mouhamed, fay@gmail.com,joueur,0)' at line 1
mysql>  insert into user (nom, prenom, login,password,rol, id_user) values (faye,mouhamed, fay@gmail.com,kojd,joueur,0)
    -> ^C
mysql>  insert into user (nom, prenom, login,password,rol, id_user) values (faye,mouhamed, fay@gmail.com,kojd,joueur,0);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '@gmail.com,kojd,joueur,0)' at line 1
mysql>  insert into user
    -> (nom, prenom, login,password,rol, id_user) values (faye,mouhamed, fay@gmail.com,kojd,joueur,0);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '@gmail.com,kojd,joueur,0)' at line 2
mysql> insert into user (nom, prenom, login,password,rol, id_user) values (faye,mouhamed, fay@gmail.com,kojd,joueur,0);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '@gmail.com,kojd,joueur,0)' at line 1
mysql> insert into user (nom, prenom, login,password,rol, id_user) values ('faye','mouhamed','fay@gmail.com','kojd','joueur','0');
Query OK, 1 row affected (0,01 sec)

mysql> desc user
    -> ^C
mysql> desc user;
+----------+-------------+------+-----+---------+----------------+
| Field    | Type        | Null | Key | Default | Extra          |
+----------+-------------+------+-----+---------+----------------+
| nom      | varchar(10) | YES  |     | NULL    |                |
| prenom   | varchar(30) | YES  |     | NULL    |                |
| login    | varchar(20) | YES  |     | NULL    |                |
| password | varchar(10) | YES  |     | NULL    |                |
| rol      | varchar(10) | YES  |     | NULL    |                |
| id_user  | int         | NO   | PRI | NULL    | auto_increment |
+----------+-------------+------+-----+---------+----------------+
6 rows in set (0,00 sec)

mysql> desc insert into user (nom, prenom, login,password,rol, id_user) values ('diop','amadou','diop@gmail.com','jezkojd','joueur','0');
+----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------+
| id | select_type | table | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra |
+----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------+
|  1 | INSERT      | user  | NULL       | ALL  | NULL          | NULL | NULL    | NULL | NULL |     NULL | NULL  |
+----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------+
1 row in set, 1 warning (0,00 sec)

mysql> desc user;
+----------+-------------+------+-----+---------+----------------+
| Field    | Type        | Null | Key | Default | Extra          |
+----------+-------------+------+-----+---------+----------------+
| nom      | varchar(10) | YES  |     | NULL    |                |
| prenom   | varchar(30) | YES  |     | NULL    |                |
| login    | varchar(20) | YES  |     | NULL    |                |
| password | varchar(10) | YES  |     | NULL    |                |
| rol      | varchar(10) | YES  |     | NULL    |                |
| id_user  | int         | NO   | PRI | NULL    | auto_increment |
+----------+-------------+------+-----+---------+----------------+
6 rows in set (0,00 sec)

mysql> select * from user;
+------+----------+---------------+----------+--------+---------+
| nom  | prenom   | login         | password | rol    | id_user |
+------+----------+---------------+----------+--------+---------+
| faye | mouhamed | fay@gmail.com | kojd     | joueur |       1 |
+------+----------+---------------+----------+--------+---------+
1 row in set (0,00 sec)

mysql> desc insert into user (nom, prenom, login,password,rol, id_user) values ('Ndiaye','laye','ndiaye@gmail.com','apoeu','joueur','0');
+----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------+
| id | select_type | table | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra |
+----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------+
|  1 | INSERT      | user  | NULL       | ALL  | NULL          | NULL | NULL    | NULL | NULL |     NULL | NULL  |
+----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+-------+
1 row in set, 1 warning (0,00 sec)

mysql>  insert into user (nom, prenom, login,password,rol, id_user) values ('Ndiaye','laye','ndiaye@gmail.com','apoeu','joueur','0');
Query OK, 1 row affected (0,01 sec)


mysql>  insert into user (nom, prenom, login,password,rol, id_user) values ('mbaye','admin1','ndiaye@gmail.com','bmaye','joueur','3');
Query OK, 1 row affected (0,00 sec)

mysql> select * from user;
+--------+----------+------------------+----------+--------+---------+
| nom    | prenom   | login            | password | rol    | id_user |
+--------+----------+------------------+----------+--------+---------+
| faye   | mouhamed | fay@gmail.com    | kojd     | joueur |       1 |
| Ndiaye | laye     | ndiaye@gmail.com | apoeu    | joueur |       2 |
| mbaye  | admin1   | ndiaye@gmail.com | bmaye    | joueur |       3 |
+--------+----------+------------------+----------+--------+---------+
3 rows in set (0,01 sec)

> mysql> select * from user;
+--------+----------+------------------+----------+--------+---------+
| nom    | prenom   | login            | password | rol    | id_user |
+--------+----------+------------------+----------+--------+---------+
| faye   | mouhamed | fay@gmail.com    | kojd     | joueur |       1 |
| Ndiaye | laye     | ndiaye@gmail.com | apoeu    | joueur |       2 |
| mbaye  | admin1   | ndiaye@gmail.com | bmaye    | joueur |       3 |
+--------+----------+------------------+----------+--------+---------+
3 rows in set (0,00 sec);
    
Query OK, 1 row affected (0,00 sec)

mysql> select * from user;
+--------+----------+------------------+----------+--------+---------+
| nom    | prenom   | login            | password | rol    | id_user |
+--------+----------+------------------+----------+--------+---------+
| faye   | mouhamed | fay@gmail.com    | kojd     | joueur |       1 |
| Ndiaye | laye     | ndiaye@gmail.com | apoeu    | joueur |       2 |
| mbaye  | admin1   | ndiaye@gmail.com | bmaye    | joueur |       3 |
| wane   | douv     | douve@gmail.com  | aaaa     | admin  |       4 |
+--------+----------+------------------+----------+--------+---------+
4 rows in set (0,00 sec)
Query OK, 1 row affected (0,01 sec)

mysql> select * from user;
+--------+----------+------------------+----------+--------+---------+
| nom    | prenom   | login            | password | rol    | id_user |
+--------+----------+------------------+----------+--------+---------+
| faye   | mouhamed | fay@gmail.com    | kojd     | joueur |       1 |
| Ndiaye | laye     | ndiaye@gmail.com | apoeu    | joueur |       2 |
| mbaye  | admin1   | ndiaye@gmail.com | bmaye    | joueur |       3 |
| wane   | douv     | douve@gmail.com  | aaaa     | admin  |       4 |
| sow    | fatou    | sow@gmail.com    | zjffa    | admin  |       5 |
+--------+----------+------------------+----------+--------+---------+
5 rows in set (0,00 sec)


mysql> select * from user;
+--------+----------+------------------+----------+--------+---------+
| nom    | prenom   | login            | password | rol    | id_user |
+--------+----------+------------------+----------+--------+---------+
| faye   | mouhamed | fay@gmail.com    | kojd     | joueur |       1 |
| Ndiaye | laye     | ndiaye@gmail.com | apoeu    | joueur |       2 |
| mbaye  | admin1   | ndiaye@gmail.com | bmaye    | joueur |       3 |
| wane   | douv     | douve@gmail.com  | aaaa     | admin  |       4 |
| sow    | fatou    | sow@gmail.com    | zjffa    | admin  |       5 |
+--------+----------+------------------+----------+--------+---------+
5 rows in set (0,00 sec)

mysql> desc question;
+---------------+-------------+------+-----+---------+----------------+
| Field         | Type        | Null | Key | Default | Extra          |
+---------------+-------------+------+-----+---------+----------------+
| id_question   | int         | NO   | PRI | NULL    | auto_increment |
| nombre_point  | int         | YES  |     | NULL    |                |
| type_question | varchar(20) | YES  |     | NULL    |                |
+---------------+-------------+------+-----+---------+----------------+
3 rows in set (0,00 sec)


E1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(nombre_point not null)' at line 1
mysql> desc question;
+---------------+-------------+------+-----+---------+----------------+
| Field         | Type        | Null | Key | Default | Extra          |
+---------------+-------------+------+-----+---------+----------------+
| id_question   | int         | NO   | PRI | NULL    | auto_increment |
| nombre_point  | int         | YES  |     | NULL    |                |
| type_question | varchar(20) | YES  |     | NULL    |                |
+---------------+-------------+------+-----+---------+----------------+
3 rows in set (0,00 sec)

mysql> alter table alter question(nombre_point not null);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'alter question(nombre_point not null)' at line 1
mysql> alter table alter column question(nombre_point not null);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'alter column question(nombre_point not null)' at line 1
mysql> alter table question alter nombre_point not null;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'not null' at line 1
mysql> alter table question modify column(nombre_point int primary key Not Null);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(nombre_point int primary key Not Null)' at line 1
mysql> alter table question modify nombre_point int primary key Not Null;
ERROR 1068 (42000): Multiple primary key defined
mysql> alter table question modify nombre_point int  Not Null;
Query OK, 0 rows affected (0,05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc question;
+---------------+-------------+------+-----+---------+----------------+
| Field         | Type        | Null | Key | Default | Extra          |
+---------------+-------------+------+-----+---------+----------------+
| id_question   | int         | NO   | PRI | NULL    | auto_increment |
| nombre_point  | int         | NO   |     | NULL    |                |
| type_question | varchar(20) | YES  |     | NULL    |                |
+---------------+-------------+------+-----+---------+----------------+
3 rows in set (0,00 sec)

mysql> alter table question modify tyoe_question  Not Null;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Not Null' at line 1
mysql> alter table question modify type_question  Not Null;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Not Null' at line 1
mysql> alter table question modify type_question varchar(20) Not Null;
Query OK, 0 rows affected (0,04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc question;
+---------------+-------------+------+-----+---------+----------------+
| Field         | Type        | Null | Key | Default | Extra          |
+---------------+-------------+------+-----+---------+----------------+
| id_question   | int         | NO   | PRI | NULL    | auto_increment |
| nombre_point  | int         | NO   |     | NULL    |                |
| type_question | varchar(20) | NO   |     | NULL    |                |
+---------------+-------------+------+-----+---------+----------------+
3 rows in set (0,00 sec)
 

Query OK, 0 rows affected (0,02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc question;
+---------------+--------------+------+-----+---------+----------------+
| Field         | Type         | Null | Key | Default | Extra          |
+---------------+--------------+------+-----+---------+----------------+
| id_question   | int          | NO   | PRI | NULL    | auto_increment |
| nombre_point  | int          | NO   |     | NULL    |                |
| type_question | varchar(20)  | NO   |     | NULL    |                |
| libellé       | varchar(100) | NO   |     | NULL    |                |
+---------------+--------------+------+-----+---------+----------------+
4 rows in set (0,00 sec)

mysql> insert into question (id_question, nombre_point, type_question,libellé) values ("1","10","reponse multiple","dans quelle pays se trouve l'amazoni");
Query OK, 1 row affected (0,01 sec)

mysql> select * from question;
+-------------+--------------+------------------+--------------------------------------+
| id_question | nombre_point | type_question    | libellé                              |
+-------------+--------------+------------------+--------------------------------------+
|           1 |           10 | reponse multiple | dans quelle pays se trouve l amazoni.|
+-------------+--------------+------------------+--------------------------------------+
1 row in set (0,00 sec)

mysql> insert into question (id_question, nombre_point, type_question,libellé) values ("2","5","reponse multiple","Quelle est le premier savant à théoriser la relativité générale");
Query OK, 1 row affected (0,01 sec)

mysql> select * from question;
+-------------+--------------+------------------+----------------------------------------------------------------------+
| id_question | nombre_point | type_question    | libellé                                                              |
+-------------+--------------+------------------+----------------------------------------------------------------------+
|           1 |           10 | reponse multiple | dans quelle pays se trouve l amazoni.                                 |
|           2 |            5 | reponse multiple | Quelle est le premier savant à théoriser la relativité générale      |
+-------------+--------------+------------------+----------------------------------------------------------------------+
2 rows in set (0,00 sec)

mysql> insert into question (id_question, nombre_point, type_question,libellé) values ("3","10","reponse multiple","Le père de la mechanique quantique"), ("4","15","reponse simple","Premier disciple de Socrate");
Query OK, 2 rows affected (0,01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from question;
+-------------+--------------+------------------+----------------------------------------------------------------------+
| id_question | nombre_point | type_question    | libellé                                                              |
+-------------+--------------+------------------+----------------------------------------------------------------------+
|           1 |           10 | reponse multiple | dans quelle pays se trouve l amazoni.                                 |
|           2 |            5 | reponse multiple | Quelle est le premier savant à théoriser la relativité générale      |
|           3 |           10 | reponse multiple | Le père de la mechanique quantique                                   |
|           4 |           15 | reponse simple   | Premier disciple de Socrate                                          |
+-------------+--------------+------------------+----------------------------------------------------------------------+

4 rows in set (0,00 sec)


mysql> insert into question (id_question, nombre_point, type_question,libellé) values ("5","15","reponse simple","Qui est l'auter de NATION NEGRE ET CULTURE"), ("6","15","reponse simple","Qui est le père de la medcine"),("7","25","reponse text","quelle entreprise américaine a developper le langage sql en 1970"),("8","15","reponse text","Qui a develloper le système d'exploitation windows"),("9","25","reponse text","qui fut le premier empereur des sérère"),("10","20","reponse multiple","Comment appelle-t-on les habtants de Kedougou");
Query OK, 6 rows affected (0,01 sec)
Records: 6  Duplicates: 0  Warnings: 0;

mysql> select * from question;
+-------------+--------------+------------------+----------------------------------------------------------------------+
| id_question | nombre_point | type_question    | libellé                                                              |
+-------------+--------------+------------------+----------------------------------------------------------------------+
|           1 |           10 | reponse multiple | dans quelle pays se trouve l amazoni.                                 |
|           2 |            5 | reponse multiple | Quelle est le premier savant à théoriser la relativité générale      |
|           3 |           10 | reponse multiple | Le père de la mechanique quantique                                   |
|           4 |           15 | reponse simple   | Premier disciple de Socrate                                          |
|           5 |           15 | reponse simple   | Qui est l auter de NATION NEGRE ET CULTURE.                           |
|           6 |           15 | reponse simple   | Qui est le père de la medcine                                        |
|           7 |           25 | reponse text     | quelle entreprise américaine a developper le langage sql en 1970     |
|           8 |           15 | reponse text     | Qui a develloper le système d exploitation windows.                   |
|           9 |           25 | reponse text     | qui fut le premier empereur des sérère l select * from question;
+-------------+--------------+------------------+----------------------------------------------------------------------+
| id_question | nombre_point | type_question    | libellé                                                              |
+-------------+--------------+------------------+------------------                              |
|          10 |           20 | reponse multiple | Comment appelle-t-on les habtants de Kedougou;                        |
+-------------+--------------+------------------+----------------------------------------------------------------------+
10 rows in set (0,00 sec)

mysql>  select * from user;
+--------+----------+------------------+----------+--------+---------+
| nom    | prenom   | login            | password | rol    | id_user |
+--------+----------+------------------+----------+--------+---------+
| faye   | mouhamed | fay@gmail.com    | kojd     | joueur |       1 |
| Ndiaye | laye     | ndiaye@gmail.com | apoeu    | joueur |       2 |
| mbaye  | admin1   | ndiaye@gmail.com | bmaye    | joueur |       3 |
| wane   | douv     | douve@gmail.com  | aaaa     | admin  |       4 |
| sow    | fatou    | sow@gmail.com    | zjffa    | admin  |       5 |
+--------+----------+------------------+----------+--------+---------+
5 rows in set (0,00 sec)

mysql>  select * from jeu;
Empty set (0,00 sec)

mysql> desc jeu;
+---------+------+------+-----+---------+-------+----------------+
| Field   | Type        | Null| Key     | Default| Extra         |
+---------+------+------+-----+---------+-------+----------------+
| id_jeu   | int | NO    | PRI  | NULL|         |                |
| prenom   | varchar(30) | YES  |     | NULL    |                |
| login    | varchar(20) | YES  |     | NULL    |                |
| password | varchar(10) | YES  |     | NULL    |                |
| rol      | varchar(10) | YES  |     | NULL    |                |
| id_user  | int         | NO   | PRI | NULL    | auto_increment |
+----------+-------------+------+-----+---------+----------------+
6 rows in set (0,01 sec)


mysql> UPDATE user
    -> SET login ='mandiaye@gmail.com' WHERE id_user=2;
Query OK, 1 row affected (0,01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from user;
+--------+----------+--------------------+----------+--------+---------+
| nom    | prenom   | login              | password | rol    | id_user |
+--------+----------+--------------------+----------+--------+---------+
| faye   | mouhamed | fay@gmail.com      | kojd     | joueur |       1 |
| Ndiaye | laye     | mandiaye@gmail.com | apoeu    | joueur |       2 |
| mbaye  | admin1   | ndiaye@gmail.com   | bmaye    | joueur |       3 |
| wane   | douv     | douve@gmail.com    | aaaa     | admin  |       4 |
| sow    | fatou    | sow@gmail.com      | zjffa    | admin  |       5 |
+--------+----------+--------------------+----------+--------+---------+
5 rows in set (0,00 sec)

mysql> alter table user add unique (login);
Query OK, 0 rows affected (0,04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc jeu;
+---------+------+------+-----+---------+-------+
| Field   | Type | Null | Key | Default | Extra |
+---------+------+------+-----+---------+-------+
| id_jeu  | int  | NO   | PRI | NULL    |       |
| date    | date | NO   |     | NULL    |       |
| heured  | time | NO   |     | NULL    |       |
| heurf   | time | NO   |     | NULL    |       |
| user_id | int  | NO   | MUL | NULL    |       |
| score   | int  | YES  |     | NULL    |       |
+---------+------+------+-----+---------+-------+
6 rows in set (0,00 sec);

mysql> desc user;
+----------+-------------+------+-----+---------+----------------+
| Field    | Type        | Null | Key | Default | Extra          |
+----------+-------------+------+-----+---------+----------------+
| nom      | varchar(10) | YES  |     | NULL    |                |
| prenom   | varchar(30) | YES  |     | NULL    |                |
| login    | varchar(20) | YES  | UNI | NULL    |                |
| password | varchar(10) | YES  |     | NULL    |                |
| rol      | varchar(10) | YES  |     | NULL    |                |
| id_user  | int         | NO   | PRI | NULL    | auto_increment |
+----------+-------------+------+-----+---------+----------------+
6 rows in set (0,00 sec);
