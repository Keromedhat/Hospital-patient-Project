#the average age of patients for each diagnosis
SELECT Diagnosis, AVG(Age) AS AverageAge
FROM `hospital_patient_records`
GROUP BY Diagnosis;

#Which department has the highest number of admitted patients?
SELECT Department, COUNT(*) AS NumberOfPatients
FROM `hospital_patient_records`
WHERE Status = 'admitted'
GROUP BY Department
ORDER BY NumberOfPatients DESC
LIMIT 1;

#How many patients have been discharged per month? 

SELECT MONTH(DischargeDate) AS Month, COUNT(*) AS DischargedPatients
FROM `hospital_patient_records`
WHERE DischargeDate IS NOT NULL
GROUP BY MONTH(DischargeDate)
ORDER BY Month;

# What is the most common diagnosis among patients?
SELECT Diagnosis, COUNT(*) AS Count
FROM `hospital_patient_records`
GROUP BY Diagnosis
ORDER BY Count DESC
LIMIT 1;

# Which doctor has treated the most patients? 
SELECT Doctor, COUNT(*) AS PatientCount
FROM hospital_patient_records
GROUP BY Doctor
ORDER BY PatientCount DESC
LIMIT 1;