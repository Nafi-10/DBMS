WITH CTE_Employee AS(
SELECT First_Name,Last_Name,Gender,Salary,
COUNT(Gender) OVER (PARTITION BY Gender) AS Total_Gender,
AVG(Salary) OVER (PARTITION BY Gender) AS Average_Salary
FROM Employee E 
JOIN JobTitles J ON E.EmployeeID = J.EmployeeID
WHERE Salary > '45000')

SELECT First_Name,Average_Salary FROM CTE_Employee

