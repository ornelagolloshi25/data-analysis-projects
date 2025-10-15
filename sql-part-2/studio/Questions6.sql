/*
6. Retry question 5 using SUBSTRING.
*/

SELECT language_code
FROM BooksDB.dbo.books
WHERE 
    SUBSTRING(language_code, 1, 2) NOT IN ('en' ) AND
    SUBSTRING(language_code, 1, 3) NOT IN ('eng' ) AND
    SUBSTRING(language_code, 1, 5) NOT IN ('en-US', 'en-UK' );

    --

SELECT COUNT(language_code)
FROM BooksDB.dbo.books
WHERE 
    SUBSTRING(language_code, 1, 2) NOT IN ('en' ) AND
    SUBSTRING(language_code, 1, 3) NOT IN ('eng' ) AND
    SUBSTRING(language_code, 1, 5) NOT IN ('en-US', 'en-UK' );