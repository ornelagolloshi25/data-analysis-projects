/*

## Drop the Table

While this has been fun, it is time to drop the table!

*/

--Drop table
USE ProjectPlans;
GO

DROP TABLE planned_projects.planned_makes;

--Test it
SELECT *
FROM ProjectPlans.planned_projects.planned_makes