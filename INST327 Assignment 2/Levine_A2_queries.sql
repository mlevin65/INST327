USE ischool_v2;
/*Answer 1*/ 
SELECT CONCAT(l.building_code, ", Room ", l.room_number) AS "Section Location", cs.section_number, c.course_prereq, CONCAT(cs.start_time," to ", cs.end_time) AS "time_interval"
FROM locations l

JOIN section_location USING(location_id)
JOIN course_sections cs USING(section_id)
JOIN courses c USING (course_id)

    WHERE c.course_prereq IS NOT NULL AND  cs.start_time > "12:00:00" AND cs.end_time < "15:00:00"
UNION

SELECT CONCAT(l.building_code, ", Room ", l.room_number) AS "Section Location", cs.section_number, "No prerequisites", CONCAT(cs.start_time," to ", cs.end_time) AS "time_interval"
FROM locations l

JOIN section_location USING(location_id)
JOIN course_sections cs USING(section_id)
JOIN courses c USING (course_id)


WHERE course_prereq IS NULL AND start_time >= "12:00:00" AND cs.end_time < "15:00:00"

ORDER BY time_interval, section_number, course_prereq;


/*Answer 2*/ 
SELECT p.department, CONCAT(p.fname, ", ", p.lname) AS "Full Name", CONCAT(city,", ", country) AS "Location Name", state, zipcode
FROM people p
LEFT JOIN person_addresses USING (person_id)
LEFT JOIN addresses USING(address_id)
WHERE state IS NULL AND fname > 'R' 
ORDER BY department, zipcode DESC, city DESC;