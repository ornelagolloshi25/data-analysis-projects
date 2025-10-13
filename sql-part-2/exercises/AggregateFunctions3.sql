
/* 

Using other_FHV_services_jan_aug_2015, 
write a query that connects the the base number and 
the base name in a string that uses the following format: base_number: base_name.

*/

SELECT Base_Number + ': ' + Base_Name
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015;