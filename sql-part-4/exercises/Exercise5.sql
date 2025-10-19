/*
# Exercises: Complex queries

For the exercises, you are tasked with writing five queries that will help you delve deeper into BooksDB. 
You can choose whether you want to use a correlated subquery, a nested subquery, the UNION operator, the INTERSECT operator, 
or the EXCEPT operator for each one. 
You may not use joins or add multiple statements to the WHERE clause.

5. Write a query that returns the names of the tags and the tag ids for tags that were used over 100,000 times for a book. 

*/
--returns the names of the tags and the tag ids for tags that were used over 100,000 times for a book. 
SELECT t.tag_name, t.tag_id
FROM BooksDB.dbo.tags t
WHERE t.tag_id IN (
    SELECT bt.tag_id
    FROM BooksDB.dbo.book_tags As bt
    GROUP BY bt.tag_id
    HAVING COUNT(*) > 100
);

--returns the names of the tags and the tag ids for tags that were used over 100,000 times for a book. 
SELECT t.tag_name, t.tag_id
FROM BooksDB.dbo.tags t
WHERE t.tag_id IN (
    SELECT bt.tag_id
    FROM BooksDB.dbo.book_tags As bt
    GROUP BY bt.tag_id
    HAVING COUNT(*) > 100000
);
