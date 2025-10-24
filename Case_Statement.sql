SELECT * FROM Employee 
JOIN JobTitles ON Employee.EmployeeID = JobTitles.EmployeeID

SELECT First_Name,Last_Name,JobTitle,Salary, 
CASE 
	WHEN JobTitle ='Sales'THEN Salary + (Salary * .10)
	ELSE Salary + (Salary * .03)
END AS Salary_Increment
FROM Employee

JOIN JobTitles ON Employee.EmployeeID = JobTitles.EmployeeID