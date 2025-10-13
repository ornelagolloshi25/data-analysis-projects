/*

3. How many titles contain the word "The"?  
    A. Is there a difference between the number of titles that use "The" or "the"?

*/

--
SELECT title
FROM BooksDB.dbo.books
WHERE title LIKE '%The%'

-- 4702
SELECT COUNT(title)
FROM BooksDB.dbo.books
WHERE title LIKE '%The%'

-- 4702
SELECT COUNT(title)
FROM BooksDB.dbo.books
WHERE title LIKE '%the%'
