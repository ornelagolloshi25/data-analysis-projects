/*
# Part 2: Choose Another Month

Choose another month and plan at least 2 events / promotions and answer the following questions:
1. Which month did you choose? 
    October
1. What 2 events / promotions are you highlighting?
    Event 1: 
        Halloween - Monday, 31 October 2022
        Spooky Stories Showcase
        I Used tags like horror, ghost, mystery, and supernatural to curate selections.

    Event 2:
        Cookbook Launch Day - October 12th

*/
--Event 2 Cookbook Launch Day
-- query with tag_id
SELECT DISTINCT
    b.authors, 
    b.title, 
    b.average_rating,
    bt.tag_id
FROM BooksDB.dbo.books AS b
INNER JOIN BooksDB.dbo.book_tags AS bt ON b.book_id = bt.goodreads_book_id
INNER JOIN BooksDB.dbo.tags AS t ON bt.tag_id = t.tag_id
WHERE t.tag_name LIKE '%cookbook%' 
   OR t.tag_name LIKE '%cooking%' 
   OR t.tag_name LIKE '%recipes%'
   OR t.tag_name LIKE '%baking%'
ORDER BY b.average_rating DESC;

--Event 2 Cookbook Launch Day, without tag_id
SELECT DISTINCT
    b.authors, 
    b.title, 
    b.average_rating
FROM BooksDB.dbo.books AS b
INNER JOIN BooksDB.dbo.book_tags AS bt ON b.book_id = bt.goodreads_book_id
INNER JOIN BooksDB.dbo.tags AS t ON bt.tag_id = t.tag_id
WHERE t.tag_name LIKE '%cookbook%' 
   OR t.tag_name LIKE '%cooking%' 
   OR t.tag_name LIKE '%recipes%'
   OR t.tag_name LIKE '%baking%'
ORDER BY b.title DESC;
