INSERT INTO departments (departement_name, location)
VALUES
('Cardiology', 'Building A'),
('Neurology', 'Building B'),
('Pediatrics', 'Building C'),
('Orthopedics', 'Building D'),
('Oncology', 'Building E'),
('Dermatology', 'Building F'),
('Radiology', 'Building G'),
('Psychiatry', 'Building H'),
('Anesthesiology', 'Building I'),
('Emergency', 'Building J');


INSERT INTO rooms (room_number, room_type, availability)
VALUES
('101', 'General', 1),
('102', 'General', 1),
('201', 'Private', 0),
('202', 'Private', 1),
('301', 'ICU', 0),
('302', 'ICU', 1),
('303', 'ICU', 1),
('401', 'General', 1),
('402', 'Private', 0),
('403', 'ICU', 1);


INSERT INTO patients (first_Name, last_Name, gender, date_of_birth, phone_Number, email, address)
VALUES
('John', 'Doe', 'Male', '1980-05-15', '1234567890', 'john.doe@example.com', '123 Main St'),
('Jane', 'Smith', 'Female', '1990-07-20', '0987654321', 'jane.smith@example.com', '456 Elm St'),
('Mike', 'Brown', 'Male', '1985-12-01', '1122334455', 'mike.brown@example.com', '789 Oak St'),
('Emily', 'Davis', 'Female', '1978-03-14', '2233445566', 'emily.davis@example.com', '101 Pine St'),
('Chris', 'Wilson', 'Male', '1995-09-09', '3344556677', 'chris.wilson@example.com', '202 Maple St'),
('Anna', 'Taylor', 'Female', '2000-01-23', '4455667788', 'anna.taylor@example.com', '303 Cedar St'),
('Paul', 'Martin', 'Male', '1982-11-30', '5566778899', 'paul.martin@example.com', '404 Birch St'),
('Laura', 'Thomas', 'Female', '1993-06-06', '6677889900', 'laura.thomas@example.com', '505 Walnut St'),
('Jack', 'Lee', 'Male', '1975-04-18', '7788990011', 'jack.lee@example.com', '606 Cherry St'),
('Sophia', 'Anderson', 'Female', '1988-02-28', '8899001122', 'sophia.anderson@example.com', '707 Poplar St');



INSERT INTO doctors (first_Name, last_Name, specialization, phone_Number, email, departement_id)
VALUES
('Sarah', 'Johnson', 'Cardiology', '9991112222', 'sarah.johnson@example.com', 1),
('David', 'Miller', 'Neurology', '8882223333', 'david.miller@example.com', 2),
('Lisa', 'Garcia', 'Pediatrics', '7773334444', 'lisa.garcia@example.com', 3),
('James', 'Rodriguez', 'Orthopedics', '6664445555', 'james.rodriguez@example.com', 4),
('Karen', 'Martinez', 'Oncology', '5555556666', 'karen.martinez@example.com', 5),
('Michael', 'Hernandez', 'Dermatology', '4446667777', 'michael.hernandez@example.com', 6),
('Susan', 'Lopez', 'Radiology', '3337778888', 'susan.lopez@example.com', 7),
('Robert', 'Clark', 'Psychiatry', '2228889999', 'robert.clark@example.com', 8),
('Jessica', 'Lewis', 'Anesthesiology', '1119990000', 'jessica.lewis@example.com', 9),
('Mark', 'Walker', 'Emergency', '0001112222', 'mark.walker@example.com', 10);



INSERT INTO appointements (appointement_date, appointement_time, gender, doctor_id, patient_id, reason)
VALUES
('2024-12-10', '10:00:00', 'Male', 1, 1, 'Regular Checkup'),
('2024-12-11', '11:30:00', 'Female', 2, 2, 'Headache'),
('2024-12-12', '14:00:00', 'Male', 3, 3, 'Fever'),
('2024-12-13', '09:30:00', 'Female', 4, 4, 'Knee Pain'),
('2024-12-14', '13:00:00', 'Male', 5, 5, 'Cancer Screening'),
('2024-12-15', '15:00:00', 'Female', 6, 6, 'Skin Rash'),
('2024-12-16', '08:00:00', 'Male', 7, 7, 'X-Ray'),
('2024-12-17', '12:00:00', 'Female', 8, 8, 'Therapy Session'),
('2024-12-18', '10:30:00', 'Male', 9, 9, 'Surgery Preparation'),
('2024-12-19', '16:00:00', 'Female', 10, 10, 'Emergency Check');


INSERT INTO admissions (patient_id, room_id, admission_date, discharge_date)
VALUES
(1, 1, '2024-11-01', '2024-11-05'),
(2, 2, '2024-11-03', '2024-11-07'),
(3, 3, '2024-11-04', '2024-11-09'),
(4, 4, '2024-11-05', '2024-11-10'),
(5, 5, '2024-11-06', '2024-11-12'),
(6, 6, '2024-11-07', '2024-11-15'),
(7, 7, '2024-11-08', '2024-11-16'),
(8, 8, '2024-11-09', '2024-11-17'),
(9, 9, '2024-11-10', '2024-11-18'),
(10, 10, '2024-11-11', '2024-11-19');


INSERT INTO perscriptions (patient_id, doctor_id, medication_id, perscreption_date, dosage_instructions)
VALUES
(1, 1, 1, '2024-11-01', 'Take once daily after meals'),
(2, 2, 2, '2024-11-02', 'Apply twice daily'),
(3, 3, 3, '2024-11-03', 'Take before bedtime'),
(4, 4, 4, '2024-11-04', 'Take every 6 hours'),
(5, 5, 5, '2024-11-05', 'Apply on affected area'),
(6, 6, 6, '2024-11-06', 'Take with water'),
(7, 7, 7, '2024-11-07', 'Take on an empty stomach'),
(8, 8, 8, '2024-11-08', 'Use as needed'),
(9, 9, 9, '2024-11-09', 'Take once weekly'),
(10, 10, 10, '2024-11-10', 'Take three times daily');   


INSERT INTO medications (medication_name, dosage)
VALUES
('Paracetamol', '500mg'),
('Ibuprofen', '200mg'),
('Amoxicillin', '250mg'),
('Metformin', '850mg'),
('Aspirin', '300mg'),
('Cetrizine', '10mg'),
('Omeprazole', '20mg'),
('Losartan', '50mg'),
('Atorvastatin', '40mg'),
('Salbutamol', '100mcg');

