SELECT *
FROM PersonalInfo
Inner Join PersonalInfoSalary
	ON PersonalInfo.ID_NO = PersonalInfoSalary.EmployeeID

SELECT *
FROM PersonalInfo 
Full Outer Join PersonalInfoSalary
	ON PersonalInfo.ID_NO = PersonalInfoSalary.EmployeeID

SELECT *
FROM PersonalInfo
Right Outer Join PersonalInfoSalary
	ON PersonalInfo.ID_NO = PersonalInfoSalary.EmployeeID

SELECT *
FROM PersonalInfo
Left Outer Join PersonalInfoSalary
	ON PersonalInfo.ID_NO = PersonalInfoSalary.EmployeeID

SELECT PersonalInfo.FirstName,LastName,ID_NO 
FROM PersonalInfo
Inner Join PersonalInfoSalary
	ON PersonalInfo.ID_NO = PersonalInfoSalary.EmployeeID