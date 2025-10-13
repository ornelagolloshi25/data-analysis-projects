/*

Using other_FHV_services_jan_aug_2015, write a query that 
returns the day number of the pickup date and month name and orders it in ascending order by day number.

*/

SELECT 
    DAY(Pick_Up_Date) AS 'Day Number',
    DATENAME(MONTH, Pick_Up_Date) AS 'Month Name'
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015
ORDER BY DAY(Pick_Up_Date) ASC;