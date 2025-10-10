--Part 2
--Books DB 
--Question 82

--return the top 10 books users want to read
SELECT TOP 10 COUNT(TR.book_id), B.title
FROM BooksDB.dbo.to_read AS TR
INNER JOIN BooksDB.dbo.books AS B
ON TR.book_id = B.book_id  
GROUP BY B.title
ORDER BY COUNT(TR.book_id) DESC;