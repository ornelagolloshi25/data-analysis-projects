/*
### Event 1: Women's History Month

Highlight popular women writers based on ratings from `BooksDB` by writing a query that returns `tag_id`, 
the number of times each `tag_id` is used and the `tag_name`. 
Use the `GROUP BY` and `HAVING` clause to narrow your focus and try multiple keywords, such as "woman" and "female".

*/

SELECT 
    bt.tag_id, 
    COUNT(*) AS tag_usage, 
    t.tag_name
FROM BooksDB.dbo.book_tags AS bt
JOIN BooksDB.dbo.tags AS t ON bt.tag_id = t.tag_id
WHERE t.tag_name LIKE '%woman%' OR t.tag_name LIKE '%female%'
GROUP BY bt.tag_id, t.tag_name
HAVING COUNT(*) > 5
ORDER BY tag_usage DESC;
