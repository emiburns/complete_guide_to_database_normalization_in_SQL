/*updating sid michael's city*/
UPDATE 
	therapist_location 
SET 
	hospital_id = (SELECT hospital_id 
				   FROM locations 
				   WHERE hospital_name = 'Open Clinic' 
				   		AND city = 'San Jose')
WHERE
	therapist_id = 15;

/*checking that update ran correctly*/
SELECT 
	td.first_name, 
	td.last_name,  
	l.hospital_name, 
	l.city
	pn.phone_number 
FROM 
	therapist_directory td
	JOIN 
		therapist_location tl 
		ON td.therapist_id = tl.therapist_id
	JOIN 
		locations l 
		ON l.hospital_id = tl.hospital_id
	JOIN 
		phone_numbers pn
		ON tl.hospital_id = pn.hospital_id
WHERE 
	td.therapist_id = 15;