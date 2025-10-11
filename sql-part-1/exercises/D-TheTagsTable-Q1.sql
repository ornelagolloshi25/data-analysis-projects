--Question 1: Create a query that returns table items where the `tag_name` describes the book as a mystery.
--Hint: 
--Use the wildcard to find the word mystery at the beginning, middle, and end of a `tag_name`

SELECT *
FROM BooksDB.dbo.tags
WHERE tag_name LIKE '%mystery%'