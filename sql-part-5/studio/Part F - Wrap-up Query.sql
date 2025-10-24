/*

## **Part F: Wrap-up Query**

Create a query that returns the names of the patrons with the genre of 
every book they currently have checked out.

Things to consider:  How are these tables related and connected to each other?

> _Note:  If you find a NULL in your output instead of a loan id, this is likely because there are multiple loans per patron.  Try_ _clearing out the loan table. You can do this by either dropping the entire table or clearing specific rows._

*/


SELECT 
    p.first_name + ' ' + p.last_name AS patron_name,
    g.genres,
    b.title
FROM Sep2025JunkDB.ornela_golloshi.loan l
    JOIN Sep2025JunkDB.ornela_golloshi.book b 
    ON l.book_id = b.book_id
    
    JOIN Sep2025JunkDB.ornela_golloshi.genre g 
    ON b.genre_id = g.genre_id
    
    JOIN Sep2025JunkDB.ornela_golloshi.patron p 
    ON l.patron_id = p.patron_id
WHERE b.available = 0 AND l.date_in IS NULL;
