--Part 1
--Books DB 
--Question 2

-- return least popular book
SELECT TOP 1
    book_id
    ,authors
    ,title
    ,average_rating as rating
FROM BooksDB.dbo.books
ORDER BY rating ASC;