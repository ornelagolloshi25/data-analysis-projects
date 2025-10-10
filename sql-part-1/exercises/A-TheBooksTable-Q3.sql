SELECT COUNT(original_publication_year) 
FROM dbo.books
WHERE original_publication_year < 1800;