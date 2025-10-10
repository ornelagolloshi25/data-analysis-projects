--Part 1
--Books DB 
--Question 8
-- return all authors
SELECT authors
FROM BooksDB.dbo.books

-- return all of authors whose first name is between rock and roll
SELECT authors
FROM BooksDB.dbo.books
WHERE LEFT(authors, CHARINDEX(',', authors + ',') - 1) BETWEEN 'rock' AND 'roll'
ORDER BY authors;

-- return all of authors whose first name is between rock and roll
SELECT DISTINCT authors
FROM BooksDB.dbo.books
WHERE LEFT(authors, CHARINDEX(',', authors + ',') - 1) BETWEEN 'rock' AND 'roll'
ORDER BY authors;


-- return number of authors whose first name is between rock and roll
SELECT  COUNT( DISTINCT authors)
FROM BooksDB.dbo.books
WHERE LEFT(authors, CHARINDEX(',', authors + ',') - 1) BETWEEN 'rock' AND 'roll';


-- return all of authors whose first name is between rock and roll
SELECT DISTINCT LTRIM(RTRIM(value))  AS Author
FROM BooksDB.dbo.books
CROSS APPLY STRING_SPLIT(authors, ',')
WHERE LOWER(LTRIM(RTRIM(value))) BETWEEN 'rock' AND 'roll'
ORDER BY LTRIM(RTRIM(value));

-- return number of authors whose first name is between rock and roll
SELECT COUNT( DISTINCT value) AS Author
FROM BooksDB.dbo.books
CROSS APPLY STRING_SPLIT(authors, ',')
WHERE LOWER(LTRIM(RTRIM(value))) BETWEEN 'rock' AND 'roll';

SELECT COUNT( DISTINCT LTRIM(RTRIM(value)) )  AS Author
FROM BooksDB.dbo.books
CROSS APPLY STRING_SPLIT(authors, ',')
WHERE LOWER(LTRIM(RTRIM(value))) BETWEEN 'rock' AND 'roll'