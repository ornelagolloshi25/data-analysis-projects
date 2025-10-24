/*

### **Loan Table**

The **loan** table will be created differently and will stay empty.  We will use our other tables to populate the loan table using queries shortly. 

Use the following code to create the **loan** table:

```
CREATE TABLE [DB].[schema].loan (
    loan_id INT IDENTITY(1,1) PRIMARY KEY,
    patron_id INT,
    date_out DATE,
    date_in DATE,
    book_id INT
    CONSTRAINT book_id FOREIGN KEY (book_id) REFERENCES [DB].[schema].book (book_id)
        ON UPDATE SET NULL
        ON DELETE SET NULL
);
```

_Notes about the syntax:_

> We are adding a [foreign key](https://www.w3schools.com/sql/sql_foreignkey.asp) to this table to reference a different table's primary key.  In this studio, we are going to link the **loan** table to the **book** table using keys.  The **loan** table will reference and add book id numbers based on the **book** table's `book_id`.  We are also providing [constraints](https://www.w3schools.com/sql/sql_constraints.asp) to be very specific about what type of data is allowed in this column.

*/

CREATE TABLE Sep2025JunkDB.ornela_golloshi.loan (
    loan_id INT IDENTITY(1,1) PRIMARY KEY,
    patron_id INT,
    date_out DATE,
    date_in DATE,
    book_id INT
    CONSTRAINT book_id FOREIGN KEY (book_id) REFERENCES Sep2025JunkDB.ornela_golloshi.book (book_id)
        ON UPDATE SET NULL
        ON DELETE SET NULL
);