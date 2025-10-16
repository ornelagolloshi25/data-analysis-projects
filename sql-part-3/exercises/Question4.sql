/*
## **QUESTION 4:** Exploring INNER Joins with the `books` and `to_read` tables

You will need to uncomment the Query to answer the question.

**Part A:**  What does an inner join do?

> Your Answer: An INNER JOIN pulls only the rows that have matching values in both tables. 

**Part B:** Currently this table has an `'IS NOT NULL'` in the `WHERE` clause. Is this necessary for this table? Why or Why not?

> Your Answer: 
I think IS NOT NULL is not necessary because the inner join only shows matching values from both tables.

**Part C:**  
When using SQL, you are usually returning much larger tables so every line of code will add to the compilation and return time.  
Rewrite this inner join query so that it contains no redundant code.

> Your Answer:  Update the query in the code box below.

*/

-- INNER JOIN
SELECT TOP 30 b.title, b.average_rating, b.books_count,tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
INNER JOIN BooksDB.dbo.to_read AS tr
ON b.book_id = tr.book_id
WHERE b.title IS NOT NULL
ORDER BY tr.book_id;

-- INNER JOIN
SELECT TOP 30 b.title, b.average_rating, b.books_count,tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
INNER JOIN BooksDB.dbo.to_read AS tr
ON b.book_id = tr.book_id
ORDER BY tr.book_id;