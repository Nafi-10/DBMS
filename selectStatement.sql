/*
Select Statement 
*,Top,Distinct,Count,As,Max,Min,Avg
*/

SELECT * FROM EmployeeDemographics

SELECT FirstName FROM EmployeeDemographics

SELECT LastName FROM EmployeeDemographics

SELECT TOP 5 * FROM EmployeeDemographics

SELECT DISTINCT(Gender) FROM EmployeeDemographics

SELECT COUNT (LastName) FROM EmployeeDemographics

SELECT COUNT (LastName) AS LastNameCount FROM EmployeeDemographics

SELECT * FROM EmployeeSalary

SELECT MAX(Salary) FROM EmployeeSalary

SELECT MAX(Salary) AS MaxSalary FROM EmployeeSalary

SELECT MIN(Salary) FROM EmployeeSalary

SELECT MIN(Salary) AS MinSalary FROM EmployeeSalary

SELECT AVG(Salary) FROM EmployeeSalary

SELECT AVG(Salary) AS AvgSalary FROM EmployeeSalary

