SELECT * FROM EmployeeDemographics

SELECT * FROM EmployeeSalary

SELECT FirstName FROM EmployeeDemographics

--Aliasing Column Name  

SELECT FirstName + ' ' + LastName AS FullName FROM EmployeeDemographics

SELECT AVG(Age) AS AverageAge FROM EmployeeDemographics

--Aliasing Table Name

SELECT Demo.EmployeeID,Demo.FirstName,Demo.LastName,Sal.JobTitle,Sal.Salary
FROM EmployeeDemographics Demo
LEFT JOIN EmployeeSalary Sal ON Demo.EmployeeID = Sal.EmployeeID