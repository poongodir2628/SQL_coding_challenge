CREATE DATABASE Hospital;
use Hospital;

-- Write a SQL command to create a table named Patients with fields (PatientID, PatientName, Age, Gender, AdmissionDate) --
CREATE TABLE Patients (
	Patient_ID INT ,
    Patient_Name VARCHAR(50),
    Age INT,
    Gender ENUM('M','F'),
    AdmissionDate Date
);
select * from Patients;

-- Write a SQL command to add a new column DoctorAssigned VARCHAR(50) to the Patients table --
ALTER TABLE Patients ADD COLUMN DoctorAssigned VARCHAR(50);
    
-- Write a SQL command to modify the column PatientName from VARCHAR(50) to VARCHAR(100) --
ALTER TABLE Patients MODIFY COLUMN Patient_Name  VARCHAR(100);

-- Write a SQL command to rename the table --
ALTER TABLE Patients RENAME TO Patient_Info;
select * from Patient_Info;

-- Write SQL commands for TRUNCATE and DROP operations --
TRUNCATE TABLE Patient_Info;
DROP TABLE Patient_Info;






