/*
# SQL Part 4 Studio

For this studio, you will be working in small groups and using the BooksDB.  
One group member should screen share while fellow group members code along in their own notebooks.  
Each group member will submit a link to their studio notebook.

You are back at the bookstore helping employees with their inventory of books.   
Four employees need your help with finding books to create in-store displays.  
Read their requests and decide if you want to use a correlated subquery, nested subquery, UNION operator, EXCEPT operator, or INTERSECT operator.  
You may not use any joins or add multiple statements to the WHERE clause unless explicitly asked.

## QUESTION 4:  Thisbe

Thisbe is planning to make a long-term display of popular books that she will update monthly, reflecting different time periods.  
She wants to make it reader-centric by including titles that readers have averagely rated higher than the book's actual average rating. 

**Part A:**   Write a query that compares the publication time with average reader ratings.

**Part B:**  She wants the list ordered by year, then the book title

*/
--return book_ id and average rating for each of them
SELECT r.book_id, AVG(r.rating)
FROM BooksDB.dbo.Ratings AS r
GROUP BY r.book_id;


--Part A:
--return books compares the publication time with average reader ratings.
SELECT b.title, b.original_publication_year
FROM BooksDB.dbo.books as b
WHERE b.average_rating < (
    SELECT AVG(r.rating)
    FROM BooksDB.dbo.Ratings AS r
    WHERE r.book_id = b.book_id
) ;

--Part B:
--return book compares the publication time with average reader ratings.
--and ordered by year, then the book title
SELECT b.title, b.original_publication_year
FROM BooksDB.dbo.books as b
WHERE b.average_rating < (
    SELECT AVG(r.rating)
    FROM BooksDB.dbo.Ratings AS r
    WHERE r.book_id = b.book_id
)
ORDER BY b.original_publication_year, b.title;