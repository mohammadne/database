so far we've been working with very simple data
real world data is messy and have lots of relations about each other

## RelationShips
different ways the data can be related:

### 1- One to One relationShip (one:one)
ex: user and its email or password or user's details

### 2- One to Many relationShip (one:many)
most common relationShip
ex: each book in amazon has lots of reviews,
each book can have multiple reviews,
each review belongs to only one book.

- question: we want to store our customers and their orders

- a1: use one table, on each row store user with its order in a gaint table
- disadvantage1: suppose a user has 20 orders, on each order, we duplicate user data
and we occupy a huge space for user information
- disadvantage2: if a user register to our site recently, he has no any order
so we have to occupy a null space for its order

- a2: use two tables with one:many relationship
in this answer, we should add another column into orders named customer_id (forign key)
we do not use normal integers for customer_id because there is no limit to stopping
us from associating wrong id for it, foreign key add some constraint for us.

### 3- Many to Many relationShip (many:many)
ex: suppose books and authors entities,
each book can have multiple authors,
each author can have multiple books.

## Joins
it takes two tables and we can join them in a couple of configurations
take some data from aech one and stick them together
