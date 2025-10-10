SELECT COUNT(ID) AS "ENG or EN-"
FROM dbo.books
WHERE language_code = 'eng' or language_code = 'en-'