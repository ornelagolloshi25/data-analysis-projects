/*
## QUESTION 6: Find a book based on a tag of your choice using joins.

Some suggestions: any hobbies you like? baking, drawing, etc. how about favorite holidays, subjects, animals, etc?

**Part A:** Explore the tags table for a tag of your choice.  
Suggested ideas, try searching for one of your hobbies, a favorite time of year, favorite animal, etc.  
Start by querying the tag table for your chosen tag.  
(_Hint:_ in order to make sure you find all combinations of your tags, use the wildcard).  
If your query returns more than one result, pick your favorite.

Here is an example.  
Alyce wanted to search for Halloween books.  
She used the wildcard, `%halloween%` and 8 different combinations were found. 
 Alyce selected `halloween-storytime`, with a tag id of 13877.

*Minimum Desired Output:* tag name and tag id

**Your Tag and Tag Id:**

*/

--7729	comedy-manga
SELECT *
FROM BooksDB.dbo.tags
WHERE tag_name LIKE '%comedy%'


/*

**Part B:** Now that you have the tag id, 
            find the title that was tagged the most with this tag by joining the `books` and `books_tags` tables.

Alyce joined the book table with the tags table and discovered that "The Little Old Lady Who Was Not Afraid of Anything" 
was tagged as `halloween-storytime` the most.

*Minimum Desired Output:* title and tag count

**Your Title and Number of times the tag was used:**

*/

SELECT TOP 1  b.title , COUNT(*)
FROM BooksDB.dbo.books as b
INNER JOIN BooksDB.dbo.book_tags as bt
ON b.book_id = bt.goodreads_book_id
WHERE bt.tag_id = 7729
GROUP BY b.title 
ORDER BY COUNT(b.title) DESC
