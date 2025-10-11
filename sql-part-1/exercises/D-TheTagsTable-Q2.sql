--Question 2: Run the query below. In your own words, what is it returning?

SELECT *
FROM BooksDB.dbo.tags
WHERE tag_name < 'd' AND tag_name >= 'c';