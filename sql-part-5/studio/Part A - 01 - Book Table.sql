/*

## **Part A: Setting Up Your Tables**

### **Book Table**

To create the **book** table, you can use the following SQL query:

```
CREATE TABLE [DB].[schema].book (
    book_id INT IDENTITY(1,1) PRIMARY KEY,
    author_id INT,
    title VARCHAR(255),
    isbn INT,
    available BIT,
    genre_id INT
);
```

_A few notes on this syntax:_

> On Auto-incrementing:
> We are going to have SQL help us assign book\\_id numbers using auto-incrementing using the **IDENTITY** property.
> The [IDENTITY](https://docs.microsoft.com/en-us/sql/t-sql/statements/create-table-transact-sql-identity-property?view=sql-server-ver15) syntax is as follows: **IDENTITY(seed, increment)**.  We want to seed the first id number as 1 in this table and increment by 1 for each following book\\_id.
> On BIT datatypes:
> For the **available** column, we are going to use the [BIT datatype](https://docs.microsoft.com/en-us/sql/t-sql/data-types/bit-transact-sql?view=sql-server-ver15) to represent True or False values.  Bit allows three entries: 0 which will stand for false,  1 which will stand for true,  and NULL.
> On CREATE TABLES:
> You may only create a table once.  You may comment out your creation query once you run it.

*/


CREATE TABLE Sep2025JunkDB.ornela_golloshi.book (
    book_id INT IDENTITY(1,1) PRIMARY KEY,
    author_id INT,
    title VARCHAR(255),
    isbn INT,
    available BIT,
    genre_id INT
);