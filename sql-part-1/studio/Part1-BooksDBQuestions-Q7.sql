--Part 1
--Books DB 
--Question 7

--return top 3 authors with the highest average book ratings
SELECT TOP 3 authors, AVG(Average_Rating) AS AvgRating
FROM BooksDB.dbo.books
GROUP BY authors
ORDER BY AvgRating DESC;

-- return top 3, firt author
SELECT TOP 3    LEFT(authors, CHARINDEX(',', authors + ',') - 1) as Author, 
                AVG(Average_Rating) AS AvgRating
FROM BooksDB.dbo.books
GROUP BY LEFT(authors, CHARINDEX(',', authors + ',') - 1)
ORDER BY AvgRating DESC;


-- return top 100 results
SELECT
    book_id
    ,authors
    ,title
    ,average_rating as rating
FROM BooksDB.dbo.books
ORDER BY    authors asc, 
            rating desc;

-- return all books from the top 3 authors, sort by author and rating
SELECT
    book_id,
    LEFT(authors, CHARINDEX(',', authors + ',') - 1) as Author,
    title,
    average_rating as rating
FROM BooksDB.dbo.books
WHERE LEFT(authors, CHARINDEX(',', authors + ',') - 1) in 
    (
        SELECT TOP 3 LEFT(authors, CHARINDEX(',', authors + ',') - 1) as Author
        FROM BooksDB.dbo.books
        GROUP BY LEFT(authors, CHARINDEX(',', authors + ',') - 1)
        ORDER BY AVG(Average_Rating) DESC
    )
ORDER BY    Author asc, 
            rating desc;
