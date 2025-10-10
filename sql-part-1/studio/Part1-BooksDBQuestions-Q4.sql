--Part 1
--Books DB 
--Question 4

-- What is the name of the most popular tag?
SELECT TOP 1
    BooksDB.dbo.tags.tag_name as "Tag Name",
    BooksDB.dbo.book_tags.tag_id as "Tag ID", 
    COUNT(BooksDB.dbo.book_tags.tag_id) as "Total"
FROM BooksDB.dbo.book_tags
INNER JOIN BooksDB.dbo.tags
on BooksDB.dbo.book_tags.tag_id = BooksDB.dbo.tags.tag_id   
GROUP BY BooksDB.dbo.book_tags.tag_id, BooksDB.dbo.tags.tag_name
ORDER BY COUNT(BooksDB.dbo.book_tags.tag_id) DESC



