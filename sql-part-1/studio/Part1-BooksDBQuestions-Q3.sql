--Part 1
--Books DB 
--Question 3

-- return most popular tag
SELECT TOP 1 tag_id, COUNT(tag_id) 
FROM BooksDB.dbo.book_tags
GROUP BY tag_id
ORDER BY COUNT(tag_id) DESC



