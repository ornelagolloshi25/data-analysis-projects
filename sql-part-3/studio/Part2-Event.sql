# Part 2: Choose Another Month

Choose another month and plan at least 2 events / promotions and answer the following questions:
1. Which month did you choose? 
    October
1. What 2 events / promotions are you highlighting?
    Event 1: 
        Spooky Stories Showcase
        Use tags like horror, ghost, mystery, and supernatural to curate selections.

    Event 2:
        Event B: National Book Month Celebration


--Event 1
SELECT 
    b.authors, 
    b.title, 
    b.average_rating, 
    bt.tag_id
FROM BooksDB.dbo.books AS b
JOIN BooksDB.dbo.book_tags AS bt ON b.book_id = bt.goodreads_book_id
JOIN BooksDB.dbo.tags AS t ON bt.tag_id = t.tag_id
WHERE t.tag_name LIKE '%horror%' 
   OR t.tag_name LIKE '%ghost%' 
   OR t.tag_name LIKE '%mystery%'
   OR t.tag_name LIKE '%supernatural%'
ORDER BY b.average_rating DESC;

--Event 2
--Event 1
SELECT 
    b.authors, 
    b.title, 
    b.average_rating, 
    bt.tag_id
FROM BooksDB.dbo.books AS b
JOIN BooksDB.dbo.book_tags AS bt ON b.book_id = bt.goodreads_book_id
JOIN BooksDB.dbo.tags AS t ON bt.tag_id = t.tag_id
WHERE t.tag_name LIKE '%award-winning%' 
   OR t.tag_name LIKE '%bestseller%' 
   OR t.tag_name LIKE '%critically acclaimed%'
   OR t.tag_name LIKE '%top rated%'
ORDER BY b.average_rating DESC;