/*

Write a query the returns the most northerly Lyft pickup.

*/

SELECT TOP 1 *
FROM RideShareDB.dbo.lyft 
ORDER BY start_lat DESC;
--
SELECT MAX(start_lat) 
FROM RideShareDB.dbo.lyft;

SELECT *
FROM RideShareDB.dbo.lyft
WHERE start_lat = (
    SELECT MAX(start_lat)
    FROM RideShareDB.dbo.lyft
);