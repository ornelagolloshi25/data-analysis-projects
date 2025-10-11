--Question 1:   Create a query that uses the `user_id` to count the total number of books that each user wants to read.  
--              Print the results in ascending order by `user_id` under the alias 'Total Books To Read'.

--Hint: 
--You can use both `GROUP BY` and `ORDER BY` to complete this query.

--
SELECT *
FROM BooksDB.dbo.to_read

--
SELECT user_id, COUNT(book_id) AS 'Total Books To Read'
FROM BooksDB.dbo.to_read
GROUP BY user_id
ORDER BY user_id ASC