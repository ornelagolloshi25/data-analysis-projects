/*
# Exercises: Complex queries

For the exercises, you are tasked with writing five queries that will help you delve deeper into BooksDB. 
You can choose whether you want to use a correlated subquery, a nested subquery, the UNION operator, the INTERSECT operator, 
or the EXCEPT operator for each one. 
You may not use joins or add multiple statements to the WHERE clause.

3. Write a query that returns the book ids of all books that have over 1000 ratings of 1 star and over 1000 ratings of 5 stars.

*/

--Testing with over 10
SELECT book_id
FROM BooksDB.dbo.ratings
WHERE rating = 1
GROUP BY book_id
HAVING COUNT(*) > 10

INTERSECT

SELECT book_id
FROM BooksDB.dbo.ratings
WHERE rating = 5
GROUP BY book_id
HAVING COUNT(*) > 10;

--returns the book ids of all books that have over 1000 ratings of 1 star or over 1000 ratings of 5 stars.
--INTERSECT returns only those book_ids that appear in both result sets.
SELECT book_id
FROM BooksDB.dbo.ratings
WHERE rating = 1
GROUP BY book_id
HAVING COUNT(*) > 1000

INTERSECT

SELECT book_id
FROM BooksDB.dbo.ratings
WHERE rating = 5
GROUP BY book_id
HAVING COUNT(*) > 1000;