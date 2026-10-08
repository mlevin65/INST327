USE ischool_v2;

/*Answer 1*/
/* Create copies of the tables*/
CREATE TABLE people_copy LIKE people;
CREATE TABLE addresses_copy LIKE addresses;
CREATE TABLE person_addresses_copy LIKE person_addresses;

/*Insert data into the copies from the original tables*/
INSERT INTO people_copy SELECT * FROM people;
INSERT INTO addresses_copy SELECT * FROM addresses;
INSERT INTO person_addresses_copy SELECT * FROM person_addresses;

INSERT INTO people_copy (lname, fname, email, college, department, title, start_date)
VALUES ('Soprano', 'Tony', 'tsoprano@mobmail.com', 'Robert H. Smith School of Business', 
'BMGT', 'Capo', '1999-01-10');

INSERT INTO addresses_copy (address_id, street, city, state, zipcode, country, main_phone)
VALUES (146, '633 Stag Trail Road', 'North Caldwell', 'NJ', '07004', 'United States', '917-555-0157');

INSERT INTO person_addresses_copy (person_id, address_id)
VALUES ((SELECT person_id FROM people_copy WHERE fname = "Tony"), 146);

SELECT * FROM people_copy;
SELECT * FROM addresses_copy;
SELECT * FROM person_addresses_copy;


/*Answer 2*/

SET SQL_SAFE_UPDATES=0;




UPDATE person_addresses_copy
SET address_id = 6
WHERE person_id = (SELECT person_id FROM people_copy WHERE fname = "Tony");
UPDATE addresses_copy
SET street = "35614 5th Center",
city = "Suba",
zipcode = "111156",
country = "Colombia",
main_phone = "812-555-4512"
WHERE address_id = 146;


SELECT pc.person_id, ac.address_id, CONCAT(pc.fname, " ", pc.lname) AS full_name, ac.street, CONCAT(ac.city, ", ", ac.country) AS location_name, ac.main_phone
FROM people_copy pc

JOIN person_addresses_copy USING(person_id)
JOIN addresses_copy ac USING(address_id)
WHERE main_phone BETWEEN '703-555-5204' AND '877-555-7471'
ORDER BY country, lname DESC;

/*Answer 3*/
/*Delete Tony Soprano's records from person_addresses_copy*/
DELETE FROM person_addresses_copy
WHERE person_id = (SELECT person_id FROM people_copy WHERE fname = "Tony");

/*Delete Tony Soprano's personal information from people_copy*/
DELETE FROM people_copy
WHERE lname = 'Soprano' AND fname = 'Tony';

/*Delete Tony Soprano's address information from addresses_copy*/
DELETE FROM addresses_copy
WHERE address_id = 146;



/*Rerun query from question 2*/
SELECT pc.person_id, ac.address_id, CONCAT(pc.fname, " ", pc.lname) AS full_name, ac.street, CONCAT(ac.city, ", ", ac.country) AS location_name, ac.main_phone
FROM people_copy pc

JOIN person_addresses_copy USING(person_id)
JOIN addresses_copy ac USING(address_id)
WHERE main_phone BETWEEN '703-555-5204' AND '877-555-7471'
ORDER BY country, lname DESC;
