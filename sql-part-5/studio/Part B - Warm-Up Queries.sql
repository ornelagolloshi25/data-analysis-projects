/*

## **Part B: Warm-Up Queries**

Write the following queries to get warmed up and make sure your tables have populated appropriately.

1. Return the mystery book titles and their ISBNs.
2. Return all of the titles and the author's first and last names for books written by authors who are currently living.

*/

--1.Return the mystery book titles and their ISBNs.
SELECT title, isbn
FROM Sep2025JunkDB.ornela_golloshi.book AS b
INNER JOIN Sep2025JunkDB.ornela_golloshi.genre AS g
ON b.genre_id = g.genre_id
WHERE g.genres LIKE 'Mystery';

/*
2. Return all of the titles and the author's first and last names for books written by authors who 
are currently living.
*/
SELECT b.title, a.first_name, a.last_name, a.death_year
FROM Sep2025JunkDB.ornela_golloshi.book AS b
INNER JOIN Sep2025JunkDB.ornela_golloshi.author AS a
ON b.author_id = a.author_id
WHERE  a.death_year IS NOT NULL