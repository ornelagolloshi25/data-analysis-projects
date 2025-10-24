/*

## **Bonus Challenge:**
                
This is an optional challenge.

Create a new table for reference materials using the following code:

```
CREATE TABLE [DB].[schema].reference_books (
    reference_id INT IDENTITY(1,1) PRIMARY KEY,
    edition INT,
    book_id INT,
    book_id INT FOREIGN KEY REFERENCES [DB].[schema].book(book_id)
        ON UPDATE SET NULL
        ON DELETE SET NULL
);
```

Fill the table with the following query:

```
INSERT INTO [DB].[schema].reference_books (edition, book_id)
VALUE (5,32);
```

*/

CREATE TABLE Sep2025JunkDB.ornela_golloshi.reference_books (
    reference_id INT IDENTITY(1,1) PRIMARY KEY,
    edition INT,
    book_id INT,
    CONSTRAINT FK_reference_books_book FOREIGN KEY (book_id)
        REFERENCES Sep2025JunkDB.ornela_golloshi.book(book_id)
        ON UPDATE SET NULL
        ON DELETE SET NULL
);


INSERT INTO Sep2025JunkDB.ornela_golloshi.reference_books (edition, book_id)
VALUES (5,32);


-- Step 1: Add a new column to flag reference books (default is 0 = not a reference book)
ALTER TABLE Sep2025JunkDB.ornela_golloshi.book
ADD is_reference BIT DEFAULT 0;

-- Step 2: Set is_reference = 0 for all existing rows where it's currently NULL
-- This ensures all books are treated as non-reference unless explicitly marked
UPDATE Sep2025JunkDB.ornela_golloshi.book
SET is_reference = 0
WHERE is_reference IS NULL;

-- Step 3: Mark books listed in the reference_books table as reference items (is_reference = 1)
UPDATE Sep2025JunkDB.ornela_golloshi.book
SET is_reference = 1
WHERE book_id IN (
    SELECT book_id FROM Sep2025JunkDB.ornela_golloshi.reference_books
);

-- Step 4: View all books to confirm the is_reference flag has been applied correctly
SELECT * FROM Sep2025JunkDB.ornela_golloshi.book;
