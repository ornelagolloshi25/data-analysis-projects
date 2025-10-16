/*
## **QUESTION 8:** Largest 'To Read' Lists

**Part A:**  Create a query that returns a table that contains the top 10 users with the most number of titles on their 'to read' list.    Group all the entries by `user_id`.

_Hint:_ You might want an alias for the titles.

_Minimum Desired Output:_ `user_id` and your aliased column of titles.

*/

SELECT TOP 10 user_id, COUNT(book_id ) AS  title_count
FROM BooksDB.dbo.to_read as tr
GROUP BY user_id
ORDER BY COUNT(tr.user_id) DESC

/*
**Part B:**  The longest list length is 15 titles total, and is shared by 4 different users.  
Select one of the uses and print out their entire 'to read' list.

*/

--user_id:38457

SELECT b.title
FROM BooksDB.dbo.to_read as tr
INNER JOIN BooksDB.dbo.books as b
on tr.book_id = b.book_id
WHERE tr.user_id = 38457