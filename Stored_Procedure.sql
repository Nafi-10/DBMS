--Stored_Procedure--

CREATE PROCEDURE TEST
AS
SELECT * FROM EmployeeStringPractice

EXEC TEST

SELECT * FROM Employees

SELECT * FROM EmployeeDemographics


CREATE PROCEDURE Temp_Employee
AS
DROP TABLE IF EXISTS #temp_employeee;
CREATE TABLE #temp_employeee (
        JobTitle VARCHAR(100),
        EmployeesPerJob INT,
        AvgAge INT,
        AvgSalary INT
    )

INSERT INTO #temp_employeee
SELECT 
    JobTitle, 
    COUNT(JobTitle), 
    AVG(Age), 
    AVG(Salary)
FROM EmployeeDemographics AS demo  -- Alias 'demo'
JOIN EmployeeSalary AS sal        -- Alias 'sal'
    ON demo.EmployeeID = sal.EmployeeID -- No longer ambiguous!
GROUP BY JobTitle;

SELECT * FROM #temp_employeee

EXEC Temp_Employee @JobTitle = 'Salesman'