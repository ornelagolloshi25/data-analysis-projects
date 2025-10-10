--Part 1
--Books DB 
--Question 1

-- Question 1: Write a query of the books table that reutrn the top 100 results and includes book_id, authors, title, and average_rating. .
SELECT TOP 100
    book_id
    ,authors
    ,title
    ,average_rating as rating
FROM BooksDB.dbo.books
ORDER BY rating DESC;