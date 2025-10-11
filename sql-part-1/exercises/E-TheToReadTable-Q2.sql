-- Question 2: 
--          Create a query that uses `user_id` to count the total number of books each user wants to read.  
--          Have the results sort the table by the total number of `book_ids` in descending order and 
--          under the alias 'Total Books To Read'.

-- Hint: You can use both `GROUP BY` and `ORDER BY` to complete this query.

SELECT user_id, COUNT(book_id) AS 'Total Books To Read'
FROM BooksDB.dbo.to_read
GROUP BY user_id
ORDER BY user_id DESC