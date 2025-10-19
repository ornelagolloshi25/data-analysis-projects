/*
# SQL Part 4 Studio

For this studio, you will be working in small groups and using the BooksDB.  
One group member should screen share while fellow group members code along in their own notebooks.  
Each group member will submit a link to their studio notebook.

You are back at the bookstore helping employees with their inventory of books.   
Four employees need your help with finding books to create in-store displays.  
Read their requests and decide if you want to use a correlated subquery, nested subquery, UNION operator, EXCEPT operator, or INTERSECT operator.  
You may not use any joins or add multiple statements to the WHERE clause unless explicitly asked.

## QUESTION 2: Ira

Ira was asked by a customer for titles that have been tagged "Meditation".  
As you create a query for Ira, think about how the tables in BooksDB are organized as you write your query.

*/
--return tag_id by tag name "Meditation"
SELECT tag_id
FROM BooksDB.dbo.tags
WHERE tag_name = 'Meditation';

-- retrun book_id when is attached with a tag name "Meditation"
SELECT bt.goodreads_book_id
FROM BooksDB.dbo.book_tags AS bt
WHERE bt.tag_id = (
    SELECT t.tag_id
    FROM BooksDB.dbo.tags As t
    WHERE t.tag_name = 'Meditation'
)

-- retrun booke titles when is attached with a tag name "Meditation"
SELECT b.title
FROM BooksDB.dbo.books AS b
WHERE b.book_id IN (
        SELECT bt.goodreads_book_id
        FROM BooksDB.dbo.book_tags AS bt
        WHERE bt.tag_id = (
            SELECT t.tag_id
            FROM BooksDB.dbo.tags As t
            WHERE t.tag_name = 'Meditation'
        )
);
