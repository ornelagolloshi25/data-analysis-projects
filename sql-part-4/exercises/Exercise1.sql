/*
# Exercises: Complex queries

For the exercises, you are tasked with writing five queries that will help you delve deeper into BooksDB. 
You can choose whether you want to use a correlated subquery, a nested subquery, the UNION operator, the INTERSECT operator, 
or the EXCEPT operator for each one. 
You may not use joins or add multiple statements to the WHERE clause.

1. Write a query that will return the number of users who rated a book above it's average rating.

*/

--return average tating for eacj book
SELECT r.book_id, AVG(rating)
FROM BooksDB.dbo.ratings AS r
GROUP BY r.book_id;


--return the rating table
SELECT *
FROM BooksDB.dbo.ratings;

-- number of users who rated a book above it's average rating
-- Problem: The soame ID is showing more then one time
SELECT r.user_id
FROM BooksDB.dbo.ratings As r
WHERE r.rating > (
                    SELECT AVG(rs.rating)
                    FROM BooksDB.dbo.ratings AS rs
                    WHERE rs.book_id = r.book_id
                )
ORDER BY r.user_id;

-- number of users who rated a book above it's average rating
SELECT DISTINCT r.user_id
FROM BooksDB.dbo.ratings As r
WHERE r.rating > (
                    SELECT AVG(rs.rating)
                    FROM BooksDB.dbo.ratings AS rs
                    WHERE rs.book_id = r.book_id
                )
ORDER BY r.user_id;

-- number of users who rated a book above it's average rating
SELECT COUNT( DISTINCT r.user_id )
FROM BooksDB.dbo.ratings As r
WHERE r.rating > (
                    SELECT AVG(rs.rating)
                    FROM BooksDB.dbo.ratings AS rs
                    WHERE rs.book_id = r.book_id
                );