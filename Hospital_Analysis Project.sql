

CREATE DATABASE Hospital_Analysis

USE Hospital_Analysis

select * from [dbo].[hospital_cleaned]

--Total patients

select COUNT(Name) as Total_Patients
from [dbo].[hospital_cleaned]

--Average age

SELECT AVG(Age) AS Average_Age
FROM [dbo].[hospital_cleaned]

--Total billing

SELECT SUM(Billing_Amount) AS Total_Billing
FROM [dbo].[hospital_cleaned]

--Patients by gender

SELECT
    Gender,
    COUNT(Name) AS Patient_Count
FROM [dbo].[hospital_cleaned]
GROUP BY Gender

--Patients by medical condition

SELECT
    Medical_Condition,
    COUNT(Name) AS Patient_Count
FROM [dbo].[hospital_cleaned]
GROUP BY Medical_Condition
ORDER BY Patient_Count Desc

--Average billing by medical condition

SELECT
    Medical_Condition,
    AVG(Billing_Amount) AS Average_Billing
FROM [dbo].[hospital_cleaned]
GROUP BY Medical_Condition
ORDER BY Average_Billing DESC;