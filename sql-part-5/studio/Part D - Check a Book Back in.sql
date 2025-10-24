/*
## **Part D: Check a Book Back In**

Work with the same patron and book as you create your query to check a book back into the library.

The check a book back in, your query need to do the following:

1. Change **available** to **1** (true) for the appropriate book.
2. Update the appropriate row in the **loan** table with today's date as the `date_in`.
3. Update the appropriate **patron** changing `loan_id` back to `NULL`.

Once you have created these queries, loan out 5 new books to 5 different patrons.

*/
-- Declare variables
DECLARE @book_id INT = 5;
DECLARE @patron_id INT = 3;

-- Step 1: Mark the book as available
UPDATE Sep2025JunkDB.ornela_golloshi.book
SET available = 1
WHERE book_id = @book_id;

-- Step 2: Update the loan record with today's return date
UPDATE Sep2025JunkDB.ornela_golloshi.loan
SET date_in = GETDATE()
WHERE book_id = @book_id AND patron_id = @patron_id AND date_in IS NULL;

-- Step 3: Clear the patron's current loan reference
UPDATE Sep2025JunkDB.ornela_golloshi.patron
SET loan_id = NULL
WHERE patron_id = @patron_id;
