/* NORMAL FORM ONE QUERIES */

/* adding primary key */
ALTER TABLE hospitals ADD COLUMN hospital_id SERIAL PRIMARY KEY;
ALTER TABLE hospitals ADD COLUMN therapist_id INTEGER;

/* adding foreign key */
UPDATE hospitals h
SET therapist_id = td.therapist_id
FROM therapist_directory td
WHERE td.name = h.therapist;

ALTER TABLE hospitals 
   ADD CONSTRAINT fk_therapist_directory
   FOREIGN KEY (therapist_id) 
   REFERENCES therapist_directory(therapist_id);

/*dropping therapist column- inconsistent with data group */
ALTER TABLE hospitals
DROP COLUMN therapist;



 /* make new last_name column */
ALTER TABLE therapist_directory ADD COLUMN last_name VARCHAR(30);

/* add last name values to last_name */
UPDATE therapist_directory
SET last_name = SUBSTRING(name, POSITION(' ' IN name)+1, LENGTH(name));

/* update name column to first_name */
ALTER TABLE therapist_directory 
RENAME COLUMN name TO first_name;

/* remove last name substring from first_name */
UPDATE therapist_directory
SET first_name = SUBSTRING(first_name, 1, POSITION(' ' IN first_name)-1);



/* creating new table for specialties */
CREATE TABLE IF NOT EXISTS specialties(
	specialties_key serial PRIMARY KEY,
	speciality_one VARCHAR(100), 
	speciality_two VARCHAR(100), 
	speciality_three VARCHAR(100),
	therapist_id INTEGER,
	CONSTRAINT fk_therapist
      FOREIGN KEY(therapist_id) 
	  REFERENCES therapist_directory(therapist_id));
	
/* inserting data into new specialities table */
INSERT INTO specialties(therapist_id, speciality_one, speciality_two, speciality_three)
SELECT therapist_id, speciality_one, speciality_two, speciality_three
FROM therapist_directory;

/* dropping speciality columns from therapist_directory */
ALTER TABLE therapist_directory
DROP COLUMN speciality_one, 
DROP COLUMN speciality_two, 
DROP COLUMN speciality_three;

