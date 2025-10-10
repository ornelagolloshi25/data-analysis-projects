--Question 1: Select the top 1000 table items ordered by the `tag_id`.

SELECT TOP 1000 *
FROM BooksDB.dbo.book_tags
ORDER BY tag_id