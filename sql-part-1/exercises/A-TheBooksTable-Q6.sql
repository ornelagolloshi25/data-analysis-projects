--Question 6: Create a query to check how many original titles were written during World War I era (1914-1921).

--
SELECT  title, original_publication_year, original_title
FROM    BooksDB.dbo.books
WHERE   original_publication_year BETWEEN 1914 AND 1921
        AND original_title IS NOT NULL


--return the number of original titles were written during World War I era (1914-1921)
SELECT  COUNT(original_title)
FROM    BooksDB.dbo.books
WHERE   original_publication_year BETWEEN 1914 AND 1921
        AND original_title IS NOT NULL
