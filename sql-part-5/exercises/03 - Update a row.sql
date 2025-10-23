/*

## Update a Row

Change different values in one of your three rows.

*/
--Update a Row
USE ProjectPlans;
GO

UPDATE planned_projects.planned_makes
SET is_completed = 1
WHERE make_id = 2;

--Test it
SELECT *
FROM ProjectPlans.planned_projects.planned_makes