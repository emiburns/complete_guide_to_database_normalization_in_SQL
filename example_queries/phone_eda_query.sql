SELECT 
	td.phone, 
	h.hospital_name, 
	h.city,
	COUNT(td.phone) AS therapists_at_hospital
FROM therapist_directory td
	JOIN hospitals h 
	ON td.therapist_id = h.therapist_id
GROUP BY 
	td.phone,
	h.hospital_name,
	h.city
ORDER BY 
	COUNT(td.phone) DESC;