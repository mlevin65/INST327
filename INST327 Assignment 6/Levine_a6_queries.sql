USE iSchool_v2;
/*Answer 1*/

SELECT MAX(CONCAT(course_code, course_number)) AS max_course_number,
	course_prereq
FROM courses
WHERE course_prereq NOT IN (
    SELECT course_prereq
    FROM courses
    WHERE course_prereq = "C- (INST201/301)"
)
GROUP BY course_prereq
HAVING max_course_number > "INST500"
ORDER BY max_course_number;


/*Answer 2*/
-- using sub querry
SELECT
    DISTINCT building_name,
    MIN(cs.end_time) AS earliest_course_end_time,
    subquery.unique_course_start_times AS unique_course_start_times
FROM locations 
JOIN section_location USING(location_id)
JOIN course_sections cs USING(section_id)
JOIN (
    SELECT
        sl.location_id,
        COUNT(distinct cs.start_time) AS unique_course_start_times
    FROM section_location sl
    JOIN course_sections cs USING(section_id)
    GROUP BY sl.location_id
) AS subquery ON locations.location_id = subquery.location_id
GROUP BY building_name, locations.location_id 
HAVING unique_course_start_times BETWEEN 2 AND 6
ORDER BY building_name, earliest_course_end_time desc, unique_course_start_times;









