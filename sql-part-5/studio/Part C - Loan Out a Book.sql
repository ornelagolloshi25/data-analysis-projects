/*
## **Part C: Loan Out a Book**
                
The library would like you to create a query that will update the database when a book is loaned out.

This query needs to perform the following functions:

1. Change **available** to **0** (false) for the appropriate book.
2. Add a new row to the **loan** table with today's date as the `date_out` and the ids in the row matching the appropriate `patron_id` and `book_id`.
3. Update the appropriate **patron** with the `loan_id` for the new row created in the **loan** table.

You can use any patron and book that strikes your fancy to create and test out this query.

> _Note:  Every time you test this, you will add an additional row to the output, creating a new loan id each time.  If you do not update the patron id, then a patron will have multiple loan ids.  This is not an issue for Part C;_ _however, this may cause issues when you work on Part F._

*/


DECLARE @book_id INT;
DECLARE @patron_id INT;
DECLARE @loan_id INT;

--Assign values to the variables
SET @book_id = 13;       
SET @patron_id = 11; 

-- Step 1: Mark the book as unavailable
/*
UPDATE Sep2025JunkDB.ornela_golloshi.book
SET available = 0
WHERE book_id = 5;
*/

--Using variables
UPDATE Sep2025JunkDB.ornela_golloshi.book
SET available = 0
WHERE book_id = @book_id;

-- Step 2: Insert a new loan record
/*
INSERT INTO Sep2025JunkDB.ornela_golloshi.loan (book_id, patron_id, date_out)
VALUES (5, 3, GETDATE());
*/

INSERT INTO Sep2025JunkDB.ornela_golloshi.loan (book_id, patron_id, date_out)
VALUES (@book_id, @patron_id, GETDATE());

-- Step 3: Update the patron with the new loan_id
-- First, get the most recent loan_id for this patron and book
/*
DECLARE @loan_id INT;
SELECT @loan_id = MAX(loan_id)
FROM Sep2025JunkDB.ornela_golloshi.loan
WHERE book_id = 5 AND patron_id = 3;
*/


SELECT @loan_id = MAX(loan_id)
FROM Sep2025JunkDB.ornela_golloshi.loan
WHERE book_id = @book_id AND patron_id = @patron_id;

-- Then update the patron record
/*
UPDATE Sep2025JunkDB.ornela_golloshi.patron
SET loan_id = @loan_id
WHERE patron_id = 3;
*/
UPDATE Sep2025JunkDB.ornela_golloshi.patron
SET loan_id = @loan_id
WHERE patron_id = @patron_id;


--test is

SELECT * FROM Sep2025JunkDB.ornela_golloshi.loan

SELECT * FROM Sep2025JunkDB.ornela_golloshi.book
SELECT * FROM Sep2025JunkDB.ornela_golloshi.patron