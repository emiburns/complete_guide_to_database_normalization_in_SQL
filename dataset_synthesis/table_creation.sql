CREATE TABLE IF NOT EXISTS therapist_directory(
	therapist_id serial PRIMARY KEY,
	name VARCHAR(100),
	gender VARCHAR(10),
	insurance VARCHAR(3) CHECK(insurance IN ('Yes', 'No')),
	new_patients VARCHAR(3) CHECK(insurance IN ('Yes', 'No')),
	speciality_one VARCHAR(100),
	speciality_two VARCHAR(100),
	speciality_three VARCHAR(100),
	license VARCHAR(5) CHECK(license IN ('MFT', 'PhD', 'MD')),
	phone CHAR(10)
);

CREATE TABLE IF NOT EXISTS hospitals(
	hospital_name VARCHAR(50),
	state CHAR(2),
	city VARCHAR(20),
	therapist VARCHAR(100)
);