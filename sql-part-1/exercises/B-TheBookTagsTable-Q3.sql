--Question 3: In the last query, we created a new, unnamed column.  Use `AS` to create an alias to provide a name of your choice to this new column.
SELECT   tag_id, COUNT(goodreads_book_id) AS 'Total Books'
FROM    BooksDB.dbo.book_tags
GROUP BY tag_id