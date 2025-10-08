--(1, 'Software Engineer', 55000),
--(2, 'HR Officer', 40000),
--(3, 'Project Manager', 75000),
--(4, 'Data Analyst', 52000),
--(5, 'Accountant', 45000),
--(6, 'Junior Developer', 35000),
--(7, 'Marketing Executive', 42000),
--(8, 'Network Engineer', 50000),
--(9, 'Customer Service Officer', 30000),
--(10, 'Business Analyst', 55000),
--(11, 'Intern', 15000),
--(12, 'Senior Software Engineer', 70000),
--(13, 'Content Writer', 32000),
--(14, 'UI/UX Designer', 48000),
--(15, 'Research Assistant', 35000),
--(16, 'Team Leader', 60000),
--(17, 'HR Manager', 65000),
--(18, 'Database Administrator', 62000),
--(19, 'Sales Executive', 38000),
--(20, 'Operations Manager', 72000),
--(21, 'Junior Accountant', 28000),
--(22, 'System Engineer', 55000),
--(23, 'Teacher', 40000),
--(24, 'General Manager', 80000),
--(25, 'Graphics Designer', 36000),
--(26, 'Technical Support', 32000),
--(27, 'Research Analyst', 42000),
--(28, 'Civil Engineer', 60000),
--(29, 'Web Developer', 50000),
--(30, 'Software Tester', 38000),
--(31, 'IT Manager', 75000),
--(32, 'Intern', 15000),
--(33, 'Production Officer', 42000),
--(34, 'Fashion Designer', 40000),
--(35, 'Electrical Engineer', 62000),
--(36, 'Digital Marketer', 38000),
--(37, 'Procurement Officer', 45000),
--(38, 'Architect', 55000),
--(39, 'Mechanical Engineer', 60000),
--(40, 'Lecturer', 42000),
--(41, 'Finance Manager', 70000),
--(42, 'Sales Assistant', 28000),
--(43, 'Software Engineer', 52000),
--(44, 'Office Assistant', 25000),
--(45, 'Business Development Officer', 46000),
--(46, 'Assistant Professor', 50000),
--(47, 'IT Consultant', 68000),
--(48, 'PR Executive', 38000),
--(49, 'Director', 90000),
--(50, 'Journalist', 40000);


SELECT * FROM PersonalInfo
SELECT * FROM PersonalInfoSalary

SELECT PersonalInfo.ID_NO,FirstName,LastName,EmployeePosition,Salary FROM PersonalInfo 
Inner Join PersonalInfoSalary ON PersonalInfo.ID_NO = PersonalInfoSalary.EmployeeID WHERE FirstName <> 'Monir'
ORDER BY Salary DESC

SELECT JobTitle,Salary FROM PersonalInfo 
Inner Join PersonalInfoSalary ON PersonalInfo.ID_NO = PersonalInfoSalary.EmployeeID 
WHERE JobTitle = 'Intern'

SELECT JobTitle, AVG(Salary) FROM PersonalInfo 
Inner Join PersonalInfoSalary ON PersonalInfo.ID_NO = PersonalInfoSalary.EmployeeID
WHERE JobTitle = 'Intern' GROUP BY JobTitle