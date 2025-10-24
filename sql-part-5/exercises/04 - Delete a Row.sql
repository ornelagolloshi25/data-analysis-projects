/*

## Delete a Row

Delete one of the rows from your table.

*/



--Test it
SELECT *
FROM Sep2025JunkDB.ornela_golloshi.planned_makes

--Delete a Row
DELETE FROM Sep2025JunkDB.ornela_golloshi.planned_makes
WHERE make_id = 2;

--Test it
SELECT *
FROM Sep2025JunkDB.ornela_golloshi.planned_makes