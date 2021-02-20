/* THIRD NORMAL FORM QUERIES */

/* creating locations table */
CREATE TABLE IF NOT EXISTS locations(
	hospital_id SERIAL PRIMARY KEY,
	hospital_name VARCHAR(50),
	state CHAR(2),
	city VARCHAR(20));
	
INSERT INTO 
	locations(hospital_name, state, city)
VALUES 
	('Van Holsen Community Hospital', 'CA', 'San Francisco'),
	('Clear Water Services', 'CA', 'San Diego'),
	('Imagery Health', 'CA', 'Sacramento'),
	('Blue Cross Clinic', 'CA', 'Los Angeles'),
	('Van Holsen Community Hospital', 'CA', 'Long Beach'),
	('Blue Cross Clinic', 'CA', 'Santa Barbara'),
	('Blue Cross Clinic', 'CA', 'San Francisco'),
	('Imagery Health', 'CA', 'Auburn'),
	('Holistic Health Services', 'CA', 'Santa Barbara'),
	('Open Clinic', 'CA', 'San Jose'),
	('Clark Jamison Hospitals', 'CA', 'Fresno'),
	('Open Clinic', 'CA', 'Oakland'),
	('Clear Minds Community', 'CA', 'Sacramento'); 

/* creating new table for therapist_location */
CREATE TABLE IF NOT EXISTS therapist_location(
	therapist_id INTEGER PRIMARY KEY,
	hospital_id INTEGER,
	CONSTRAINT fk_therapist_hospital
      FOREIGN KEY(hospital_id) 
	  REFERENCES locations(hospital_id));
	
/* inserting data into new therapist_location table */
INSERT INTO therapist_location(therapist_id, hospital_id)
SELECT DISTINCT td.therapist_id, l.hospital_id
FROM therapist_directory td
JOIN hospitals h ON td.therapist_id = h.therapist_id
JOIN locations l ON h.hospital_name = l.hospital_name AND h.city = l.city;

/* creating phone numbers table */
CREATE TABLE IF NOT EXISTS phone_numbers(
	hospital_id INTEGER PRIMARY KEY,
	phone_number CHAR(10),
	CONSTRAINT fk_phones
		FOREIGN KEY(hospital_id)
		REFERENCES locations(hospital_id));
		
/*inserting data into phone numbers table */
INSERT INTO phone_numbers(hospital_id, phone_number)
SELECT DISTINCT tl.hospital_id, td.phone
FROM therapist_directory td 
JOIN therapist_location tl ON td.therapist_id = tl.therapist_id;

/* dropping hospitals table */
DROP TABLE hospitals