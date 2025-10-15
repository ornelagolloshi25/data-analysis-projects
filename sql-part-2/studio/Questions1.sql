/*
1.  Create a query that returns the longest title in the dataset.  We can do this in two steps.

    A. Create a query that returns the length of the longest title.
    B. Create a query that uses the length you found in step A to find the longest title.

*/

--A
SELECT MAX(LEN(title))
FROM BooksDB.dbo.books

--B
SELECT title
FROM BooksDB.dbo.books
WHERE LEN(title) = (
    SELECT MAX(LEN(title))
    FROM BooksDB.dbo.books
);


