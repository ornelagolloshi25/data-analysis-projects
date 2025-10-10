--Part 1
--Books DB 
--Question 1

-- return top 100 results
SELECT TOP 100
    book_id
    ,authors
    ,title
    ,average_rating as rating
FROM BooksDB.dbo.books
ORDER BY rating DESC;