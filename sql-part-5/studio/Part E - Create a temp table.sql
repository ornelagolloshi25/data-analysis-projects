/*

## **Part E: Create a temp table**

Write a query that returns a temporary table for a patron that shows them all of their loans.

_Question to think about:_  Why might a temp table be a good option for this type of query?

*/

-- Declare the patron_id variable
DECLARE @patron_id INT = 3;

-- Create a temporary table of that patron's loans
SELECT 
    l.loan_id,
    l.book_id,
    b.title,
    l.date_out,
    l.date_in
INTO #PatronLoans
FROM Sep2025JunkDB.ornela_golloshi.loan l
JOIN Sep2025JunkDB.ornela_golloshi.book b ON l.book_id = b.book_id
WHERE l.patron_id = @patron_id;

-- View the temp table
SELECT * FROM #PatronLoans;

/*
A temporary table is a smart choice for this type of query—especially when showing a 
patron all of their loans—for several practical and performance-related reasons:

*/
