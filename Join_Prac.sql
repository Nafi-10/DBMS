--data into the Employees table

--(101, 'Aditya', 'Sharma', 'Male', '1980-05-15'),
--(102, 'Priya', 'Verma', 'Female', '1985-11-20'),
--(103, 'Rohan', 'Singh', 'Male', '1992-02-10'),
--(104, 'Anjali', 'Patel', 'Female', '1995-07-22'),
--(105, 'Vikram', 'Mehta', 'Male', '1988-09-01'),
--(106, 'Sneha', 'Gupta', 'Female', '1990-03-12'),
--(107, 'Arjun', 'Kumar', 'Male', '1993-06-25'),
--(108, 'Neha', 'Joshi', 'Female', '1989-12-30'),
--(109, 'Karan', 'Chopra', 'Male', '1991-08-18'),
--(110, 'Pooja', 'Malhotra', 'Female', '1994-01-05'),
--(111, 'David', 'Chen', 'Male', '1996-04-14'),
--(112, 'Emily', 'White', 'Female', '1992-10-11'),
--(113, 'Michael', 'Brown', 'Male', '1987-07-07'),
--(114, 'Jessica', 'Miller', 'Female', '1990-09-19'),
--(115, 'Chris', 'Wilson', 'Male', '1998-03-03'),
--(116, 'Sarah', 'Taylor', 'Female', '1986-05-21'),
--(117, 'James', 'Anderson', 'Male', '1991-01-15'),
--(118, 'Linda', 'Thomas', 'Female', '1993-11-09'),
--(119, 'Robert', 'Jackson', 'Male', '1984-02-28'),
--(120, 'Patricia', 'Lee', 'Female', '1997-08-17'),
--(121, 'John', 'Harris', 'Male', '1995-06-01'),
--(122, 'Jennifer', 'Clark', 'Female', '1989-04-10'),
--(123, 'Richard', 'Lewis', 'Male', '1992-08-23'),
--(124, 'Susan', 'Walker', 'Female', '1994-12-01'),
--(125, 'Joseph', 'Hall', 'Male', '1999-02-18'),
--(126, 'Karen', 'Allen', 'Female', '1988-10-27'),
--(127, 'Thomas', 'Young', 'Male', '1996-07-30'),
--(128, 'Nancy', 'King', 'Female', '1990-05-08'),
--(129, 'Charles', 'Wright', 'Male', '1983-09-14'),
--(130, 'David', 'Lopez', 'Male', '1993-04-04');

---- Insert data into the JobDetails table
---- Note: The ManagerID for the CEO (101) is NULL as he has no manager.

--(201, 101, 'CEO', 'Executive', 250000.00, '2010-01-15', NULL),
--(202, 102, 'Marketing Director', 'Marketing', 120000.00, '2012-07-20', 101),
--(203, 103, 'Marketing Specialist', 'Marketing', 75000.00, '2018-03-10', 102),
--(204, 104, 'Graphic Designer', 'Marketing', 68000.00, '2020-06-22', 102),
--(205, 105, 'IT Director', 'IT', 135000.00, '2013-09-01', 101),
--(206, 106, 'Senior Software Developer', 'IT', 110000.00, '2015-05-18', 105),
--(207, 107, 'Software Developer', 'IT', 85000.00, '2019-08-01', 106),
--(208, 108, 'HR Director', 'Human Resources', 115000.00, '2014-02-20', 101),
--(209, 109, 'HR Specialist', 'Human Resources', 72000.00, '2017-11-15', 108),
--(210, 110, 'Recruiter', 'Human Resources', 65000.00, '2021-04-05', 108),
--(211, 111, 'Junior Software Developer', 'IT', 62000.00, '2022-06-14', 106),
--(212, 112, 'Finance Manager', 'Finance', 105000.00, '2016-10-11', 101),
--(213, 113, 'Senior Accountant', 'Finance', 88000.00, '2017-08-07', 112),
--(214, 114, 'Accountant', 'Finance', 67000.00, '2019-09-19', 113),
--(215, 115, 'IT Support Intern', 'IT', 45000.00, '2023-05-15', 105),
--(216, 116, 'Sales Director', 'Sales', 140000.00, '2012-11-01', 101),
--(217, 117, 'Sales Manager', 'Sales', 95000.00, '2018-07-15', 116),
--(218, 118, 'Sales Representative', 'Sales', 70000.00, '2020-01-20', 117),
--(219, 119, 'Operations Manager', 'Operations', 98000.00, '2015-03-01', 101),
--(220, 120, 'Office Assistant', 'Operations', 52000.00, '2022-09-10', 119),
--(221, 121, 'Software Developer', 'IT', 86000.00, '2021-02-01', 106),
--(222, 122, 'Accountant', 'Finance', 69000.00, '2018-04-10', 113),
--(223, 123, 'Sales Representative', 'Sales', 71000.00, '2019-10-01', 117),
--(224, 124, 'Social Media Manager', 'Marketing', 78000.00, '2021-01-15', 102),
--(225, 125, 'Data Analyst Intern', 'IT', 48000.00, '2023-06-01', 105),
--(226, 126, 'Legal Counsel', 'Executive', 150000.00, '2014-11-10', 101),
--(227, 127, 'Network Administrator', 'IT', 79000.00, '2022-08-01', 105),
--(228, 128, 'Payroll Specialist', 'Human Resources', 68000.00, '2016-06-08', 108),
--(229, 129, 'Chief Financial Officer', 'Finance', 180000.00, '2011-10-03', 101),
--(230, 130, 'Software Developer', 'IT', 89000.00, '2020-04-04', 106);

--Exercise 1: Basic Join
--Goal: Get the first name, last name, and job title for every employee.

SELECT First_Name,Last_Name,JobTitle FROM Employee
Inner Join JobTitles ON Employee.EmployeeID = JobTitles.EmployeeID

--Exercise 2: Join with WHERE Clause
--Goal: Find the first name and salary of all employees who work in the 'IT' department.

SELECT 
	Employee.First_Name,
	JobTitles.Salary
FROM Employee 
Inner Join JobTitles ON Employee.EmployeeID = JobTitles.EmployeeID 
WHERE JobTitles.Department ='IT'

--Exercise 3: Join with WHERE and ORDER BY
--Goal: List all employees in the 'Sales' department, showing their full name and salary, ordered from highest salary to lowest.

SELECT
	First_Name,Last_Name,Salary 
FROM Employee
Inner Join JobTitles ON Employee.EmployeeID = JobTitles.EmployeeID
WHERE Department = 'Sales'
ORDER BY Salary DESC

--Exercise 4: Join with Multiple Conditions
--Goal: Find the names and hire dates of all 'Software Developers' who earn more than $85,000.

SELECT First_Name,Last_Name,Salary,HireDate FROM Employee
Inner Join JobTitles ON Employee.EmployeeID = JobTitles.EmployeeID
WHERE JobTitles.JobTitle ='Software Developer' AND JobTitles.Salary > 85000;

--Exercise 5: Join with Aggregate Functions (GROUP BY)
--Goal: Calculate the average salary for each department.

SELECT JobTitles.Department,AVG(Salary) As Average_Salary FROM Employee 
Inner Join JobTitles ON Employee.EmployeeID = JobTitles.EmployeeID
GROUP BY JobTitles.Department ORDER BY Average_Salary DESC;