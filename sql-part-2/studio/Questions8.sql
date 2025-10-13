/*

8.  Update the query in question 7 using COALESCE to change the language code values from NULL to 'unknown'.

    A.  Has this changed the language\_code  where the values are NULL?

*/

SELECT 
    title + ' by ' + authors + ' in ' + COALESCE(language_code, 'unknown') + ' language' AS BookSummary
FROM BooksDB.dbo.books
WHERE 
    title IS NULL OR
    authors IS NULL OR
    language_code IS NULL;