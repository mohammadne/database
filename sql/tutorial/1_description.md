what is a database?
- a collection of data
- structured set of computerized data with an accessible interface

a good relational database should allows
you to quick filter over your data and allows 
you to query among your data

some terms:
- database managment system (DMS or DBMS)
- relational database managment system (RDMS)

database vs DMS ?
- in reality database is a giantic collection of data 
- DBMS allows us to interface with database (talking, managment task)

when we generally talk about database, we normally mean DBMS + Database

common database (DBMS + Database):
- PostgreSQL
- MySQL
- Oracle Database 
- SQLite

SQL: structered query language

MySQL vs SQL:
MySQL is DMS and working with it is primarily writing SQL
but SQL is the language we use to "talk" to our databases 
(ex: find all users who are 18 or older => SELECT * FROM Users WHERE Age >= 18)
all relational databases like MySQL, PostgreSql and ... all use SQL

MySQL vs PostgreSQL:
both are different DMSs but both uses SQL
but there are slight differences in syntax

focus that once you learn SQL, it's pretty easy to switch
to another Databse that uses SQL

what makes database(DBMS) unique are the features they offer, not the language
the security, fastness, download-size, user-permissions they need

installation:
we are using cloud9, which is a cloud base developer environment (c9.io)
text-editor, terminal and ... in your browser

when you create a workspace, cloud9 server allocate you
a little space and you can talk to your machine on there
you have file tree, text-editor, terminal (like VSCODE)

start MySQL server on Cloud9: mysql-ctl start

start MySQL interactive shell on Cloud9: mysql-ctl cli
cli: stands for command line interface
start MySQL monitor or interactive shell
exit shell via: exit; quit; \q; type ctrl+c

stop MySQL server on Cloud9: mysql-ctl start

some basic My-SQL cli commands:
help;

show databases;

select @@hostname;