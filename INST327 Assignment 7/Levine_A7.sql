USE ischool_v2;


CREATE OR REPLACE VIEW people_from_location_in_bsis AS
SELECT COALESCE(CONCAT(city, ', ', state, ', ', country), 'Address Unknown') AS Geo_Location,
       p.department AS Department,
       COUNT(*) AS Number_in_Department
FROM addresses
JOIN person_addresses USING (address_id)
JOIN people p USING (person_id)
WHERE department = 'BSIS'
GROUP BY COALESCE(CONCAT(city, ', ', state, ', ', country), 'Address Unknown'), department
ORDER BY Number_in_Department DESC, Geo_Location;



SELECT * FROM people_from_location_in_bsis;