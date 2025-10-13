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

--
SELECT MAX(start_lng)
FROM RideShareDB.dbo.lyft 

--
SELECT *
FROM RideShareDB.dbo.lyft
WHERE start_lng = (
    SELECT MAX(start_lng)
    FROM RideShareDB.dbo.lyft
);
