/*
Group By,Order By
*/

SELECT *
FROM EmployeeDemographics

SELECT Gender
FROM EmployeeDemographics
GROUP BY Gender

SELECT Gender,COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Gender

SELECT Gender, Age, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Gender,Age

/* ORDER BY */

SELECT *
FROM EmployeeDemographics
ORDER BY Age,Gender

SELECT *
FROM EmployeeDemographics
ORDER BY AGE ASC,Gender DESC

SELECT *
FROM EmployeeDemographics
ORDER BY 2 ASC, Age DESC, Gender ASC