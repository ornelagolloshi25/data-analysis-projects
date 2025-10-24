/*

## Update a Row

Change different values in one of your three rows.

*/
--Update a Row

UPDATE Sep2025JunkDB.ornela_golloshi.planned_makes
SET is_completed = 1
WHERE make_id = 2;

--Test it
SELECT *
FROM Sep2025JunkDB.ornela_golloshi.planned_makes