INSERT INTO 
	therapist_directory(name, gender, insurance, new_patients, speciality_one,
						speciality_two, speciality_three, license, phone)
VALUES 
	('Flora Martinez', 'Female', 'Yes', 'Yes', 'OCD', 'Phobias', 'Anxiety', 'MD', '8495776489'),
	('Andy James', 'Male', 'Yes', 'No', 'Depression', 'Anxiety', 'PTSD', 'PhD', '2340894766'),
	('Hannah Myers', 'Female', 'No', 'Yes', 'Anxiety', 'Schizophrenia', 'Bipolar', 'MD', '9907846574'),
	('Jane Huang', 'Female', 'Yes', 'Yes', 'Depression', 'Anxiety', 'Bipolar', 'MD', '4507856797'),
	('April Adams', 'Female', 'No', 'Yes', 'OCD', 'Anxiety', 'PTSD', 'MFT', '4507856797'),
	('Jon Schaffer', 'Male', 'Yes', 'No', 'BPD', 'Bipolar', 'Depression', 'PhD', '9907846574'),
	('Shauna West','Female', 'Yes', 'Yes', 'ADHD', 'Anxiety', 'OCD', 'MD', '8495776480'),
	('Juan Angelo', 'Male', 'No', 'Yes', 'Schizophrenia', 'Bipolar', 'Depression', 'MD', '4507856797'),
	('Christie Yang', 'Female', 'Yes', 'Yes', 'Autism', 'ADHD', 'OCD', 'PhD', '4507856796'),
	('Annika Neusler', 'Female', 'Yes', 'No', 'Addiction', 'Depression', 'PTSD', 'MFT', '9907846575'),
	('Simone Anderson', 'Female', 'No', 'No', 'Schizophrenia', 'Depression', 'PTSD', 'MD', '8304498765'),
	('Ted Nyguen', 'Male', 'Yes', 'Yes', 'ADHD', 'Anxiety', 'Phobias', 'PhD', '4301239990'),
	('Valentino Rossi', 'Male', 'Yes', 'Yes', 'Autism', 'Anxiety', 'Depression', 'MD', '8304498765'),
	('Jessica Armer', 'Female', 'No', 'Yes', 'PTSD', 'Bipolar', 'Depression', 'MD', '3330456612'),
	('Sid Michaels', 'Female', 'Yes', 'Yes', 'OCD', 'Phobia', 'Anxiety', 'MFT', '4301239997'),
	('Yen Waters', 'Male', 'Yes', 'Yes', 'Anxiety', 'Depression', 'ADHD', 'PhD', '4507856796'),
	('Ru Izaelia', 'Female', 'No', 'Yes', 'Bipolar', 'BPD', 'Phobias', 'MD', '4301239990'), 
	('Vishal Rao', 'Male', 'Yes', 'Yes', 'Depression', 'Schizophrenia', 'Anxiety', 'MD', '7305557894'),
	('Lana John', 'Female', 'Yes', 'Yes', 'Anxiety', 'Phobias', 'OCD', 'MFT', '7305557894'),
	('Izzie Geralt', 'Female', 'Yes', 'Yes', 'Depression', 'Addiction', 'Anxiety', 'MD', '4301239990'); 
	
INSERT INTO 
	hospitals(hospital_name, state, city, therapist)
VALUES 
	('Van Holsen Community Hospital', 'CA', 'San Francisco', 'Flora Martinez'),
	('Clear Water Services', 'CA', 'San Diego', 'Andy James'),
	('Imagery Health', 'CA', 'Sacramento', 'Hannah Myers'),
	('Blue Cross Clinic', 'CA', 'Los Angeles', 'Jane Huang'),
	('Blue Cross Clinic', 'CA', 'Los Angeles', 'April Adams'),
	('Imagery Health', 'CA', 'Sacramento', 'Jon Schaffer'),
	('Van Holsen Community Hospital', 'CA', 'Long Beach', 'Shauna West'),
	('Blue Cross Clinic', 'CA', 'Santa Barbara', 'Juan Angelo'),
	('Blue Cross Clinic', 'CA', 'San Francisco', 'Christie Yang'),
	('Imagery Health', 'CA', 'Auburn', 'Annika Neusler'),
	('Holistic Health Services', 'CA', 'Santa Barbara', 'Simone Anderson'),
	('Open Clinic', 'CA', 'San Jose', 'Ted Nyguen'),
	('Holistic Health Services', 'CA', 'Santa Barbara', 'Valentino Rossi'),
	('Clark Jamison Hospitals', 'CA', 'Fresno', 'Jessica Armer'),
	('Open Clinic', 'CA', 'Oakland', 'Sid Michaels'),
	('Blue Cross Clinic', 'CA', 'San Francisco', 'Yen Waters'),
	('Open Clinic', 'CA', 'San Jose', 'Ru Izaelia'),
	('Clear Minds Community', 'CA', 'Sacramento', 'Vishal Rao'),
	('Clear Minds Community', 'CA', 'Sacramento', 'Lana John'),
	('Open Clinic', 'CA', 'San Jose', 'Izzie Geralt'); 