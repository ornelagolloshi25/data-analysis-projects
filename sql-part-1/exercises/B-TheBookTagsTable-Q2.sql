--Question 2: Create a query that counts the number of `goodreads_book_id` grouped by the `tag_id`.

SELECT   tag_id, COUNT(goodreads_book_id) AS 'Total Books'
FROM    BooksDB.dbo.book_tags
GROUP BY tag_id