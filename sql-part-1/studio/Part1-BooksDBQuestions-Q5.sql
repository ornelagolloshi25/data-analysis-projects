--Part 1
--Books DB 
--Question 5

-- How many books where released in the first decade of 2000?
SELECT COUNT(title) AS "Books Released from between 2000 and 2010"
FROM BooksDB.dbo.books
WHERE original_publication_year > 2000 and original_publication_year <= 2010;