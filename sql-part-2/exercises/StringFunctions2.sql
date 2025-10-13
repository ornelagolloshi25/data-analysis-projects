/*

The number of trips and the number of pickups are both stored as strings in  other_FHV_services_jan_aug_2015. 
This is because the data provided included spaces in some of the numbers. 
Write a query that returns the location of spaces in both of these columns.

*/

--
SELECT *
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015

--
SELECT 
    CHARINDEX(' ', Number_of_Trips)
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015
