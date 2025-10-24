SELECT First_Name,Last_Name,Gender,Salary, 
COUNT(Gender) OVER (PARTITION BY Gender) AS Total_Gender 
FROM Employee E
JOIN JobTItles J ON E.EmployeeID = J.EmployeeID

--GROUP BY

SELECT Gender , COUNT(Gender) AS Total_Gender FROM Employee E
JOIN JobTitles J ON E.EmployeeID = J.EmployeeID
GROUP BY Gender