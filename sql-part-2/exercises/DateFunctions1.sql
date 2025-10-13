/*
## Date Functions

For other_FHV_services_jan_aug_2015, display the name of month of the pickup date and order in descending order. 
Is the result of this query what you expected?

*/

--
SELECT *
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015

--
SELECT
    DATENAME(month, Pick_Up_Date) AS 'PickupMonth'
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015
ORDER BY Pick_Up_Date;