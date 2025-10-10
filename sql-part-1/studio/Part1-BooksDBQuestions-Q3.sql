--Part 1
--Books DB 
--Question 3

-- Which tag  is the most popular?
SELECT TOP 1 tag_id, COUNT(tag_id) 
FROM BooksDB.dbo.book_tags
GROUP BY tag_id
ORDER BY COUNT(tag_id) DESC



