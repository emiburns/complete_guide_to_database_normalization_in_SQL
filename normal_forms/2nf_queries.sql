/* SECOND NORMAL FORM QUERIES */

/* creating visit_specifications table */
CREATE TABLE IF NOT EXISTS visit_specifications(
	therapist_id INTEGER PRIMARY KEY,
	insurance VARCHAR(3) CHECK(insurance IN ('Yes', 'No')),
	new_patients VARCHAR(3) CHECK(insurance IN ('Yes', 'No')),
	CONSTRAINT fk_visits
      FOREIGN KEY(therapist_id) 
	  REFERENCES therapist_directory(therapist_id));
	  
/* inserting data into new table */
INSERT INTO visit_specifications(therapist_id, insurance, new_patients)
SELECT therapist_id, insurance, new_patients
FROM therapist_directory;