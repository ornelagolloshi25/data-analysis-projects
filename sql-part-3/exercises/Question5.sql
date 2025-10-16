/*
## **QUESTION 5:**  Using joins to find the most tagged book and the most popular tag

We will be writing 3 queries to find both the most tagged book and that book's most popular tag.

**Part A:**  What is the most tagged book?

Start by joining the `books` and `book_tags` tables ON the `books.best_book_id` and `book_tags.goodreads_book_id`. 
We want the *most popular* book, 
so think about ordering the table in a way that will display both the book title and the number of times a book tag has been used.

Minimum Desired output:_  The title of the most tagged book, and the number of times the book has been tagged.

**Title:** Selected Poems

*/

--A
SELECT TOP 1 b.title, COUNT(bt.tag_id)
FROM BooksDB.dbo.books as b
INNER JOIN BooksDB.dbo.book_tags as bt
ON b.book_id = bt.goodreads_book_id
GROUP BY b.title
ORDER BY COUNT(bt.tag_id) DESC


/*

**Part B:** How many different tags have been used for the most tagged book?

Start by joining the `books` and `book_tags` tables ON the `books.best_book_id` and `book_tags.goodreads_book_id`. 
We want to find the *most popular* tag id, so think about ordering in a way that will display the most popular tag id.

*Minimum Desired Output:* The tag id for the most popular tag used for the most tagged book.

**Tag Id:**

*/

--B
SELECT TOP 1  bt.tag_id, COUNT(b.title)
FROM BooksDB.dbo.books as b
INNER JOIN BooksDB.dbo.book_tags as bt
ON b.book_id = bt.goodreads_book_id
GROUP BY bt.tag_id
ORDER BY COUNT(b.title) DESC


/*

**Part C:** What is this particular tag?

You may return this answer with a simple query.

*Minimum Desired Output:* The tag name for the most popular tag used for the most tagged book.

**Tag Name:**

*/

-- return book id with most used tag
SELECT TOP 1 goodreads_book_id
FROM BooksDB.dbo.book_tags
GROUP BY goodreads_book_id
ORDER BY COUNT(tag_id) DESC

--
SELECT  bt.goodreads_book_id, bt.tag_id, COUNT(bt.tag_id)
FROM BooksDB.dbo.book_tags as bt  
WHERE bt.goodreads_book_id = (
    SELECT TOP 1 goodreads_book_id
    FROM BooksDB.dbo.book_tags
    GROUP BY goodreads_book_id
    ORDER BY COUNT(tag_id) DESC
)
GROUP BY bt.tag_id, bt.goodreads_book_id
ORDER BY COUNT(bt.tag_id) DESC;

--
SELECT TOP 1 t.tag_name
FROM BooksDB.dbo.book_tags AS bt
INNER JOIN BooksDB.dbo.tags AS t 
ON bt.tag_id = t.tag_id
WHERE bt.goodreads_book_id = (
    SELECT TOP 1 goodreads_book_id
    FROM BooksDB.dbo.book_tags
    GROUP BY goodreads_book_id
    ORDER BY COUNT(tag_id) DESC
)
GROUP BY t.tag_name
ORDER BY COUNT(bt.tag_id) DESC;
