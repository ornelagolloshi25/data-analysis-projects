/*
7.  Create a column that returns the title, authors, and language codes.  
    Concatenate these elements so that they return in the following way: title by authors in language\_code language.

    A.  Check each selected column to see where any values are NULL.  
        Did any of the columns contain NULL values?  If so, which one?

*/

--
SELECT 
    title + ' by ' + authors + ' in ' + language_code + ' language' AS BookSummary
FROM BooksDB.dbo.books;
--
SELECT 
    title + ' by ' + authors + ' in ' + language_code + ' language' AS BookSummary
FROM BooksDB.dbo.books
WHERE title IS NULL OR authors IS NULL OR language_code IS NULL;

--
SELECT 
    title + ' by ' + authors + ' in ' + language_code + ' language' AS BookSummary
FROM BooksDB.dbo.books
WHERE 
    title IS NULL OR
    authors IS NULL OR
    language_code IS NULL;

