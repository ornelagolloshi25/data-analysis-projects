/*

## Delete a Row

Delete one of the rows from your table.

*/

--Delete a Row
USE ProjectPlans;
GO

DELETE FROM planned_projects.planned_makes
WHERE make_id = 2;

--Test it
SELECT *
FROM ProjectPlans.planned_projects.planned_makes