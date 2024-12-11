################ challenge01 ########################

INSERT INTO patients (first_Name, last_Name, gender, date_of_birth, phone_Number)
VALUES 
    ('Alex', 'Johnson', 'Male', '1990-06-15', '1234567890');

################ challenge02 ########################

SELECT departement_name, location
FROM departments;

################ challenge03 ########################


SELECT * FROM patients 
ORDER by date_of_birth ASC;


################ challenge04 ########################

SELECT DISTINCT gender
 FROM patients;

################ challenge05 ########################

SELECT * FROM doctors LIMIT 3;

################ challenge06 ########################

SELECT * 
FROM patients 
WHERE date_of_birth > '2000-12-31';

################ challenge07 ########################


SELECT * FROM doctors
WHERE specialization = 'Cardiology' OR specialization = 'Neurology';


################ challenge08 ########################

SELECT * 
FROM admissions 
WHERE MONTH(admission_date) = 12 
  AND DAY(admission_date) BETWEEN 1 AND 7;


################ challenge09 ########################

Alter TABLE patients
ADD COLUMN age_category ENUM('child','Adult','senior');

UPDATE patients
SET age_category = 
    CASE 
        WHEN YEAR(date_of_birth) BETWEEN 2007 AND 2024 THEN 'child'
        WHEN YEAR(date_of_birth) BETWEEN 1956 AND 2006 THEN 'Adult'
        WHEN YEAR(date_of_birth) < 1956 THEN 'senior'
    END;


################ challenge10 ########################


SELECT COUNT(*) AS total_appointments
FROM appointements;


################ challenge11 ########################

SELECT departement_id, COUNT(doctor_id) AS total_doctors
FROM doctors
GROUP BY departement_id;

################ challenge12 ########################


alter TABLE patients 
Add COLUMN Age int(11);

UPDATE patients 
SET age = TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE());

SELECT AVG(age) AS Average_age FROM patients;



################ challenge13 ########################



SELECT appointement_date, appointement_time
FROM appointements
WHERE appointement_date = (SELECT MAX(appointement_date) FROM appointements)
ORDER BY appointement_time DESC
LIMIT 1;



################ challenge14 ########################



SELECT room_id, COUNT(*) AS total_admissions
FROM admissions
GROUP BY room_id;



################ challenge15 ########################

SELECT * 
FROM patients
WHERE email IS NULL OR email = '';


################ challenge16 ########################


SELECT 
    appointements.appointement_id,
    appointements.appointement_date,
    appointements.appointement_time,
    patients.first_Name AS patient_first_name,
    patients.last_Name AS patient_last_name,
    doctors.first_Name AS doctor_first_name,
    doctors.last_Name AS doctor_last_name
FROM 
    appointements
LEFT JOIN 
    patients ON appointements.patient_id = patients.patient_id
LEFT JOIN 
    doctors ON appointements.doctor_id = doctors.doctor_id;




################ challenge17 ########################

SELECT * FROM appointements
WHERE appointement_date < '2024-01-01';
  
  
DELETE FROM appointements
WHERE appointement_date < '2024-01-01';


################ challenge18 ########################



RENAME TABLE Oncology to Cancer_Treatment;

ALTER TABLE Oncology RENAME TO Cancer_Treatment;



################ challenge19 ########################



SELECT gender, COUNT(*) AS patient_count
FROM patients
GROUP BY gender
HAVING COUNT(*) >= 2;



################ challenge20 ########################


CREATE VIEW active_admissions AS
SELECT 
    admissions.admission_id,
    admissions.patient_id,
    admissions.room_id,
    admissions.admission_date,
    admissions.discharge_date
FROM 
    admissions
WHERE 
    CURRENT_DATE BETWEEN admission_date AND discharge_date;


SELECT * FROM active_admissions;
