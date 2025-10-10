--Part 1
--Books DB 
--Question 6

-- return all of books that contain the word, "happy"
SELECT title
FROM BooksDB.dbo.books
WHERE title LIKE '%happy%' 

-- return number of books that contain the word, "happy"
SELECT COUNT(title)
FROM BooksDB.dbo.books
WHERE title LIKE '%happy%'

