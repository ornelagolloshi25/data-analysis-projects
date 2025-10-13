/*

2.  Use what you learned in question 1 to find the shortest author name.  

    A. Create a query that returns the length of the shortest author.
    B. Create a query that returns the shortest author's name.

*/

--
SELECT *
FROM BooksDB.dbo.books

--
SELECT authors
FROM BooksDB.dbo.books
--A
SELECT MIN(LEN(authors))
FROM BooksDB.dbo.books


--B
SELECT authors
FROM BooksDB.dbo.books
WHERE LEN(authors) = (
    SELECT MIN(LEN(authors))
    FROM BooksDB.dbo.books
);

--B
SELECT DISTINCT authors
FROM BooksDB.dbo.books
WHERE LEN(authors) = (
    SELECT MIN(LEN(authors))
    FROM BooksDB.dbo.books
);