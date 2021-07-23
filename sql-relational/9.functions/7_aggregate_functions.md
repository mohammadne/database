# Aggregate Functions
bulit in SQL functions that allows for aggregation or combination
of data to get meaning of it

SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
SET SESSION sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
-- When MySQL's only_full_group_by mode is turned on, 
-- it means that strict ANSI SQL rules will apply when using aggreagte functions like: GROUP BY. 
-- With regard to your query, this means that if you GROUP BY of the author_lname column, 
-- then you can only select two things:
-- 1- the author_lname column, or
-- 2- aggregates of any other column

The vast majority of MySQL GROUP BY questions which I see on SO have strict mode turned off, 
so the query is running, but with incorrect results. In your case, 
the query won't run at all, forcing you to think about what you really want to do.

## COUNT
- SELECT COUNT(*) AS count FROM <table_name>;
focus that COUNT(*) means counts in each row 
ex: count whatever to count like how many books we have?

## GROUP BY
- SELECT <column_1>, <column_2> FROM <table_name> GROUP BY <column_name>
group together based on given statement or summerized and aggregates identical data into single rows
ex: group movies by their genre and if there are 3 genre, it will return 3 super group each one for a genre.
it will create a super row and preview the first one
a common task is to use it along side of other aggregate functions like COUNT

## MIN, MAX
- SELECT MAX(<column_name>) FROM <table_name>;
min or max value in a table
ex: find minimum released_year in our books.
ex: show the title of maximum book which have max pages
focus about if we give another column with MAX or MIN, the result may be irrelevent.

## SUM
- SELECT SUM(<column_name>) FROM <table_name>;
adds things together 
ex: sum all pages in entire database

## AVG
- SELECT AVG(<column_name>) FROM <table_name>;
average the data and it's precision is 4 points.
ex: average sales of monthes.
