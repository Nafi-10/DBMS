SELECT JobTitle,COUNT(JobTitle)
FROM Employee 
JOIN JobTitles ON JobTitles.EmployeeID = Employee.EmployeeID
GROUP BY JobTitle
HAVING COUNT(JobTitle) > 1

SELECT AVG(Salary) AS Average_Salary FROM Employee 
JOIN JobTitles ON Employee.EmployeeID = JobTitles.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) > 52000
ORDER BY AVG(Salary) DESC