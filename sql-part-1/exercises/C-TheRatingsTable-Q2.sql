--Question 2: Create a query that returns the total number of users that have given a rating of less than 2.
SELECT  user_id
FROM BooksDB.dbo.ratings
WHERE rating < 2
ORDER BY user_id

--19575
SELECT  COUNT(user_id)
FROM BooksDB.dbo.ratings
WHERE rating < 2

--returns the total number of users that have given a rating of less than 2.
SELECT COUNT(DISTINCT user_id)
FROM BooksDB.dbo.ratings
WHERE rating < 2