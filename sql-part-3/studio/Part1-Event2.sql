
/*
### Event 2: Choose another event from March/Spring

Write a query to return authors, titles, ratings, and `tag_id` that you would want to promote during your chosen event.
*/

SELECT 
    b.authors, 
    b.title, 
    b.average_rating, 
    bt.tag_id
FROM BooksDB.dbo.books AS b
JOIN BooksDB.dbo.book_tags AS bt ON b.book_id = bt.goodreads_book_id
JOIN BooksDB.dbo.tags AS t ON bt.tag_id = t.tag_id
WHERE t.tag_name LIKE '%spring%' 
   OR t.tag_name LIKE '%love%' 
   OR t.tag_name LIKE '%romance%'
ORDER BY b.average_rating DESC;

--Easter
SELECT DISTINCT
    b.authors, 
    b.title, 
    b.average_rating, 
    bt.tag_id
FROM BooksDB.dbo.books AS b
JOIN BooksDB.dbo.book_tags AS bt ON b.book_id = bt.goodreads_book_id
JOIN BooksDB.dbo.tags AS t ON bt.tag_id = t.tag_id
WHERE t.tag_name LIKE '%easter%' 
   OR t.tag_name LIKE '%faith%' 
   OR t.tag_name LIKE '%family%'
ORDER BY b.average_rating DESC;

--Easter
SELECT DISTINCT
    b.authors, 
    b.title, 
    b.average_rating
FROM BooksDB.dbo.books AS b
JOIN BooksDB.dbo.book_tags AS bt ON b.book_id = bt.goodreads_book_id
JOIN BooksDB.dbo.tags AS t ON bt.tag_id = t.tag_id
WHERE t.tag_name LIKE '%easter%' 
   OR t.tag_name LIKE '%faith%' 
   OR t.tag_name LIKE '%family%'
ORDER BY b.average_rating DESC;
