/*

5.  How many books have been identified as printed in a language other than English?  
    There are four language codes for English: 'en', 'eng', 'en-US', and 'en-UK'.  
    Use LEFT to answer the question.  (Do not use the wildcard)

    You might want to use one of these [comparison operators]
    (https://docs.microsoft.com/en-us/sql/t-sql/language-elements/comparison-operators-transact-sql?view=sql-server-ver15).

*/

--
SELECT language_code
FROM BooksDB.dbo.books
WHERE language_code not in ('en', 'eng', 'en-US', 'en-UK' );

--
SELECT language_code
FROM BooksDB.dbo.books
WHERE 
    LEFT(language_code, 2) NOT IN ('en' ) AND
    LEFT(language_code, 3) NOT IN ('eng' ) AND
    LEFT(language_code, 5) NOT IN ('en-US', 'en-UK' );




--

SELECT COUNT(language_code)
FROM BooksDB.dbo.books
WHERE 
    LEFT(language_code, 2) NOT IN ('en' ) AND
    LEFT(language_code, 3) NOT IN ('eng' ) AND
    LEFT(language_code, 5) NOT IN ('en-US', 'en-UK' );