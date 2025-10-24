/*

We will repeat a similar process for the **author, patron,** and **genre** tables. 
                
### **Author Table**

To create the **author** table, you will use the following code:

```
CREATE TABLE [DB].[schema].author (
    author_id INT IDENTITY(1,1), PRIMARY KEY
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    birth_year INT,
    death_year INT
);
```

*/
-- this is right 
CREATE TABLE Sep2025JunkDB.ornela_golloshi.author (
    author_id INT IDENTITY(1,1) PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    birth_year INT,
    death_year INT
);