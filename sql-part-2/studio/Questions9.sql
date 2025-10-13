/*

    9. Revisit question 7 using ISNULL instead of COALESCE.
        A.  Has this changed the language\_code  where the values are NULL?

*/

SELECT 
    title + ' by ' + authors + ' in ' + ISNULL(language_code, 'unknown') + ' language' AS BookSummary
FROM BooksDB.dbo.books
WHERE 
    title IS NULL OR
    authors IS NULL OR
    language_code IS NULL;