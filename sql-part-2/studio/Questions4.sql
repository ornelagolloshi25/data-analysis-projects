/*

4.  How many authors' names _start_ with 'Z'?

*/

--
SELECT authors
FROM BooksDB.dbo.books
WHERE authors LIKE 'Z%';

--11
SELECT COUNT(authors)
FROM BooksDB.dbo.books
WHERE authors LIKE 'Z%';


