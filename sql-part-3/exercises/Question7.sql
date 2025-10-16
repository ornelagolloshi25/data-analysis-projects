/*
## **QUESTION 7:** What are the top 10 most popular book titles on the 'to read' list?

**Part A:**  Explore how the `to_read` and `books` tables are organized, and then join them.  What will you use as a key?

Your Answer:

*/

SELECT TOP 10 b.title, COUNT(tr.book_id)
FROM BooksDB.dbo.books as b
INNER JOIN BooksDB.dbo.to_read as tr
on b.book_id = tr.book_id
GROUP BY b.title
ORDER BY COUNT(tr.book_id) DESC


/*

**Part B:** Organize your newly joined table in a way that groups popularity based on the title based on users.

*Hint:* Suggest using an alias for the aggregation you will need to run on the `user_id`

*Minimum Desired Output:* title and aliased column

*/

SELECT TOP 10 b.title, COUNT( tr.user_id) AS  popularity
FROM BooksDB.dbo.books as b
INNER JOIN BooksDB.dbo.to_read as tr
on b.book_id = tr.book_id
GROUP BY b.title
ORDER BY COUNT(tr.user_id) DESC

