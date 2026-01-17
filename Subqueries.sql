/*

Topic : Subqueries ( in the Select,From and Where Statement )
*/

SELECT * FROM EmployeeSalary
-- Subquery in Select--

SELECT EmployeeID,Salary,(SELECT AVG(Salary) FROM EmployeeSalary) AS All_AVG_Salary 
FROM EmployeeSalary

--How to do it with Partition By--

SELECT EmployeeID,Salary, AVG(Salary) over () AS All_AVG_Salary 
FROM EmployeeSalary

-- Why Group By doesn't work --

SELECT EmployeeID,Salary,AVG(Salary) as ALL_AVG_Salary
FROM EmployeeSalary
Group By EmployeeID,Salary
Order By 1,2

-- Subquery in From --

SELECT a.EmployeeID,ALL_AVG_Salary
FROM (SELECT EmployeeID,Salary, AVG(Salary) over () AS All_AVG_Salary 
				FROM EmployeeSalary) a

-- Subquery in Where --

SELECT EmployeeID, JobTitle, Salary
FROM EmployeeSalary
WHERE EmployeeID IN (
    SELECT EmployeeID -- Only one column allowed here!
    FROM EmployeeDemographics
);