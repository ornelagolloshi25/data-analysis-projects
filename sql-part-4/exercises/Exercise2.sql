/*
# Exercises: Complex queries

For the exercises, you are tasked with writing five queries that will help you delve deeper into BooksDB. 
You can choose whether you want to use a correlated subquery, a nested subquery, the UNION operator, the INTERSECT operator, 
or the EXCEPT operator for each one. 
You may not use joins or add multiple statements to the WHERE clause.

2. Write a query that returns the book ids of all books that have over 1000 ratings of 1 star or over 1000 ratings of 5 stars.

*/

-- returns the book ids of all books that have over 100 ratings of 1 star
SELECT book_id,rating
FROM BooksDB.dbo.ratings
WHERE rating = 1
GROUP BY book_id, rating
HAVING COUNT(*) > 10;

--returns the book ids of all books that have over  over 100 ratings of 5 stars.
SELECT book_id, rating
FROM BooksDB.dbo.ratings
WHERE rating = 5
GROUP BY book_id, rating
HAVING COUNT(*) > 10;

--returns the book ids of all books that have over 1000 ratings of 1 star or over 1000 ratings of 5 stars.
--UNION combines both sets, ensuring each book_id appears only once.
SELECT book_id
FROM BooksDB.dbo.ratings
WHERE rating = 1
GROUP BY book_id
HAVING COUNT(*) > 1000
UNION
SELECT book_id
FROM BooksDB.dbo.ratings
WHERE rating = 5
GROUP BY book_id
HAVING COUNT(*) > 1000;