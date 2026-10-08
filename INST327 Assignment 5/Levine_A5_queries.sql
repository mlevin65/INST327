USE ischool_v2;
/*Answer 1*/ 
SELECT c.course_prereq, d.delivery_type, cs.meeting_days,  MAX(TIMEDIFF(cs.end_time, cs.start_time)) AS max_course_duration
FROM courses c
JOIN course_sections cs USING(course_id)
JOIN delivery d USING (delivery_id)
WHERE 
    c.course_prereq IS NOT NULL
GROUP BY 
    c.course_prereq, d.delivery_type, cs.meeting_days
    
HAVING 
    max_course_duration BETWEEN '02:45:00' AND '03:45:00'
ORDER BY 
    max_course_duration DESC;
    
/*Answer 2*/ 
SELECT COUNT(p.person_id) AS number_of_people, FLOOR(AVG(a.zipcode)) AS average_zipcode, 
a.country, p.department
FROM 
    people p
JOIN 
    person_addresses pa USING(person_id)
JOIN 
    addresses a USING(address_id)

GROUP BY 
	a.country, p.department
    
HAVING
	number_of_people BETWEEN 1 AND 9 AND
    average_zipcode BETWEEN 20707 AND 744000
    AND average_zipcode IS NOT NULL
ORDER BY 
	p.department DESC, number_of_people desc;

    

    