/*

Write a query that returns the most easterly Lyft pickup.

*/
--
SELECT *
FROM RideShareDB.dbo.lyft 
ORDER BY start_lng DESC;
--
SELECT TOP 1 *
FROM RideShareDB.dbo.lyft 
ORDER BY start_lng DESC;