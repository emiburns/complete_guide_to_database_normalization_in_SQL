/*Determine the number of therapists in Northern California that specialize in mood disorders 
and, of these therapists, how many are currently accepting new patients.*/

SELECT 
	sub.new_patients,
	COUNT(therapist_id) AS norcal_therapists
FROM 
	(SELECT s.therapist_id, s.speciality_one, s.speciality_two, s.speciality_three, td.new_patients 
	 FROM specialties s 
	 	JOIN therapist_directory td ON s.therapist_id = td.therapist_id
	 	JOIN therapist_location tl ON td.therapist_id = tl.therapist_id
	 	JOIN locations l ON tl.hospital_id = l.hospital_id
	 WHERE l.city ~ '(San Francisco|Oakland|San Jose|Sacramento|Auburn)') sub
WHERE 
	speciality_one ~ '(Anxiety|Depression|Bipolar)'
	OR speciality_two ~ '(Anxiety|Depression|Bipolar)'
	OR speciality_three ~ '(Anxiety|Depression|Bipolar)'
GROUP BY sub.new_patients;