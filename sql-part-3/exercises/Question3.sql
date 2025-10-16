/*

## **QUESTION 3:** Exploring FULL JOINS with the `books` and `to_read` tables

You will need to uncomment the Query to answer the question.

**Part A:**  Look at the table and explore how it was populated.  
Try manipulating the query to better understand how this table works.  
Try adding a WHERE clause, or ORDER BY a column on the `books` table.  
Based on your exploration, can you think of when you might want a FULL join rather than a LEFT, RIGHT, or INNER?

> Your Answer:

Shows books that have not been added to any user's "to read" like in a LEFT JOIN.

Shows  entries that don’t match any book in the books table like in a RIGHT JOIN.

*/
-- FULL JOIN
SELECT TOP 30 b.title, b.average_rating, b.books_count,tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
FULL JOIN BooksDB.dbo.to_read AS tr
ON b.book_id = tr.book_id;