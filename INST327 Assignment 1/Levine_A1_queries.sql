/*Answer 1*/ 
USE ischool;
SELECT street AS "Street Name and Number", CONCAT(city,", ", state) AS "Place Name", country AS "Country of Residence", main_phone AS "Main Phone Number"
FROM addresses
WHERE country = "United States" AND state >= "DE" AND state <= "VA" AND main_phone <= "6" AND main_phone >= "3"
ORDER BY state DESC, city DESC;

/*Answer 2*/ 
SELECT CONCAT(building_code, location_id) AS "Location Code", building_name AS "Building Name", room_number AS "Room No."
FROM locations
WHERE room_number <= 6000 AND room_number >= 1000
ORDER BY room_number DESC;

