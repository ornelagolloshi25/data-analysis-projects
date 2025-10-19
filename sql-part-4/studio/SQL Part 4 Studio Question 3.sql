/*
# SQL Part 4 Studio

For this studio, you will be working in small groups and using the BooksDB.  
One group member should screen share while fellow group members code along in their own notebooks.  
Each group member will submit a link to their studio notebook.

You are back at the bookstore helping employees with their inventory of books.   
Four employees need your help with finding books to create in-store displays.  
Read their requests and decide if you want to use a correlated subquery, nested subquery, UNION operator, EXCEPT operator, or INTERSECT operator.  
You may not use any joins or add multiple statements to the WHERE clause unless explicitly asked.

## QUESTION 3:  Alyce

Alyce wants to create a display of books with an average rating of 4.2 or higher, 
but she only wants books that share both title and original title.  
Write a query that displays both the original title and title for Alyce, in descending order by rating.  
Make sure that none of the original titles contain NULL values either.

*/

--return all book where the average rating is higher ther 4.2
SELECT book_id, original_title, title, average_rating 
FROM BooksDB.dbo.books
Where average_rating >= 4.2

--return all books where original title is null
SELECT original_title, title, average_rating
FROM Books
WHERE original_title IS NULL;

--return books with an average rating of 4.2 or higher, books that share both title and original title
--Problem: WE can not sort results by average_ratiing in descending order
SELECT original_title, title, average_rating
FROM BooksDB.dbo.books
Where average_rating >= 4.2

EXCEPT

SELECT original_title, title
FROM Books
WHERE original_title IS NULL;

--return books with an average rating of 4.2 or higher, books that share both title and original title
-- and sort results by average_ratiing in descending order
SELECT original_title, title
FROM (
    SELECT original_title, title, average_rating
    FROM BooksDB.dbo.books
    Where average_rating >= 4.2

    EXCEPT

    SELECT original_title, title, average_rating
    FROM Books
    WHERE original_title IS NULL
) AS BooksFour
ORDER BY average_rating DESC

