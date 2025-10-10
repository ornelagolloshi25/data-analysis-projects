--Part 2
--Books DB 
--Question 1

--return top 10 most frequently used tags in books with fewer than 3,000 ratings?
SELECT Top 10
    T.tag_name,
    SUM(BT.count) AS TagUsage
FROM BooksDB.dbo.books B
    JOIN BooksDB.dbo.book_tags BT 
    ON B.book_id = BT.goodreads_book_id
    
    JOIN BooksDB.dbo.tags T 
    ON BT.tag_id = T.tag_id
WHERE B.ratings_count < 3000
GROUP BY T.tag_name
ORDER BY T.tag_name ASC, TagUsage DESC;
