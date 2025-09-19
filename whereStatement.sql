/*
Where Statement 
=,<>,<,>, And, Or,Like, Null, Not Null, In

= (Equal) → Matches exact value.

<> (Not Equal) → Excludes a specific value.

> (Greater Than) → Value greater than given.

< (Less Than) → Value smaller than given.

AND → Both conditions must be true.

OR → At least one condition must be true.

LIKE → Pattern matching (e.g., M% → starts with M).

IN → Match from multiple values.

NULL → Empty / no value.

NOT NULL → Value is present.

*/

SELECT *
FROM EmployeeDemographics WHERE FirstName = 'Fahim'

SELECT *
FROM EmployeeDemographics WHERE FirstName <> 'Nusrat'

SELECT *
FROM EmployeeDemographics WHERE Age > 20

SELECT *
FROM EmployeeDemographics WHERE Age < 20

SELECT *
FROM EmployeeDemographics WHERE Age > 25 AND Gender='Female'

SELECT *
FROM EmployeeDemographics WHERE Age > 25 OR Gender='Female'

SELECT *
FROM EmployeeDemographics WHERE FirstName LIKE 'M%' 

SELECT *
FROM EmployeeDemographics WHERE FirstName IN ('Fahim', 'Mitu')