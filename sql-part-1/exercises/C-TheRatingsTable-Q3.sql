--Question 3: Create a query that returns the sum of books that have a rating of 4 or higher.

SELECT  COUNT(book_id)
FROM BooksDB.dbo.ratings
WHERE rating >= 4
