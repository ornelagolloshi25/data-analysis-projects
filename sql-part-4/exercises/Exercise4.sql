/*
# Exercises: Complex queries

For the exercises, you are tasked with writing five queries that will help you delve deeper into BooksDB. 
You can choose whether you want to use a correlated subquery, a nested subquery, the UNION operator, the INTERSECT operator, 
or the EXCEPT operator for each one. 
You may not use joins or add multiple statements to the WHERE clause.

4. Write a query that returns the book ids of books that have a language code of "en-US" and not a langugae code of "en-GB".

*/

--returns the book ids of books that have a language code of "en-US"
SELECT book_id, language_code
FROM BooksDB.dbo.books
WHERE language_code = 'en-US'

--returns the book ids of books that have a language code of "en-GB"
SELECT book_id, language_code
FROM  BooksDB.dbo.books
WHERE language_code = 'en-GB';

--Test it: returns the book ids of books that have a language code of "en-US" and not a langugae code of "en-GB".
--EXCEPT removes any book IDs that appear in both sets — leaving only those with "en-US" and not "en-GB"

SELECT book_id, language_code
FROM BooksDB.dbo.books
WHERE language_code = 'en-US'

EXCEPT

SELECT book_id, language_code
FROM  BooksDB.dbo.books
WHERE language_code = 'en-GB';


--returns the book ids of books that have a language code of "en-US" and not a langugae code of "en-GB".
--EXCEPT removes any book IDs that appear in both sets — leaving only those with "en-US" and not "en-GB"

SELECT book_id
FROM BooksDB.dbo.books
WHERE language_code = 'en-US'

EXCEPT

SELECT book_id
FROM  BooksDB.dbo.books
WHERE language_code = 'en-GB';

