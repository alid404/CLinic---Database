CREATE DATABASE HospitalManagement;

Use HospitalManagement;

CREATE TABLE admissions (
    admission_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    patient_id INT(11),
    room_id INT(11),
    admission_date DATE Default CURRENT_TIME,
    discharge_date DATE 
);

CREATE TABLE rooms (
	room_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    room_number varchar(10),
    room_type enum('General','Private','ICU'),
    availability tinyint(1)
);

CREATE TABLE staff(
    staff_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_Name varchar(50),
    last_Name varchar(50),
    job_Title  VARCHAR(50),
    phone_Number VARCHAR(15),
    departement_id INT(11)
);

CREATE TABLE patients(
    patient_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_Name varchar(50),
    last_Name varchar(50),
    gender enum('Male','Female','Other'),
    date_of_birth Date,
    phone_Number VARCHAR(15),
    email varchar(100),
    address varchar(255)
);

CREATE TABLE appointements(
    appointement_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    appointement_date DATE,
    appointement_time TIME,
    gender enum('Male','Female','Other'),
    doctor_id int(11),
    patient_id int(11),
    reason varchar(255)
);

CREATE TABLE departments(
    departement_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	departement_name varchar(50),
    location varchar(100)
);


CREATE TABLE perscriptions(
    perscreption_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    patient_id int(11),
    doctor_id int(11),
    medication_id int(11),
    perscreption_date DATE,
    dosage_instructions varchar(255)
);

CREATE TABLE medications(
    medication_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    medication_name varchar(100),
    dosage varchar(50)
);

CREATE TABLE doctors(
    doctor_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_Name varchar(50),
    last_Name varchar(50),
    specialization varchar(50),
    phone_Number VARCHAR(15),
    email varchar(100),
    departement_id int(11)
);


################### Adding foreign keys #####################################


ALTER TABLE admissions
ADD CONSTRAINT fk_admissions_patient
FOREIGN KEY (patient_id) REFERENCES patients (patient_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE admissions
ADD CONSTRAINT fk_admissions_room
FOREIGN KEY (room_id) REFERENCES rooms (room_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE staff
ADD CONSTRAINT fk_staff_department
FOREIGN KEY (departement_id) REFERENCES departments (departement_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE appointements
ADD CONSTRAINT fk_appointments_patient
FOREIGN KEY (patient_id) REFERENCES patients (patient_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE appointements
ADD CONSTRAINT fk_appointments_doctor
FOREIGN KEY (doctor_id) REFERENCES doctors (doctor_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE perscriptions
ADD CONSTRAINT fk_prescriptions_doctor
FOREIGN KEY (doctor_id) REFERENCES doctors (doctor_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE perscriptions
ADD CONSTRAINT fk_prescriptions_patient
FOREIGN KEY (patient_id) REFERENCES patients (patient_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE perscriptions
ADD CONSTRAINT fk_prescriptions_medication
FOREIGN KEY (medication_id) REFERENCES medications (medication_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE doctors
ADD CONSTRAINT fk_doctors_department
FOREIGN KEY (departement_id) REFERENCES departments (departement_id)
ON DELETE CASCADE
ON UPDATE CASCADE;


