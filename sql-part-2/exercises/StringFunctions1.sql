/*
Write a query that returns the last 3 characters of the base name in  other_FHV_services_jan_aug_2015

Do you see anything that is a common abbreviation at the end of business names?

*/

--
SELECT Base_Name
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015

--
SELECT RIGHT(Base_Name, 3)
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015