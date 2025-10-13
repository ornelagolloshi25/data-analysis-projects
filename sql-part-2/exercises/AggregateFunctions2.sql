/*

Write a query the returns the most northerly Lyft pickup.

*/

SELECT TOP 1 *
FROM RideShareDB.dbo.lyft 
ORDER BY start_lat DESC;