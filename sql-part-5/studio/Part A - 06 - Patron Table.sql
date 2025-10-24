/*

### **Patron Table**

To create the **patron**, you will use the following code:

```
CREATE TABLE [DB].[schema].patron (
    patron_id INT IDENTITY (1,1) PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    loan_id INT
);
```

*/

CREATE TABLE  Sep2025JunkDB.ornela_golloshi.patron (
    patron_id INT IDENTITY (1,1) PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    loan_id INT
);