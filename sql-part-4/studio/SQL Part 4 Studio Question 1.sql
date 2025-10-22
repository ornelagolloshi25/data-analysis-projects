/*
# SQL Part 4 Studio

For this studio, you will be working in small groups and using the BooksDB.  
One group member should screen share while fellow group members code along in their own notebooks.  
Each group member will submit a link to their studio notebook.

You are back at the bookstore helping employees with their inventory of books.   
Four employees need your help with finding books to create in-store displays.  
Read their requests and decide if you want to use a correlated subquery, nested subquery, UNION operator,
EXCEPT operator, or INTERSECT operator.  
You may not use any joins or add multiple statements to the WHERE clause unless explicitly asked.

## QUESTION 1:  Willow

Willow wants a list of book titles that have multiple authors attributed to them.  Write a query to return her desired results.

*/
--query to return a list of book titles that have multiple authors attributed to them.
--authors column for example:Gabriel García Márquez, Gregory Rabassa

SELECT title, authors
FROM BooksDB.dbo.books
WHERE authors LIKE '%,%';