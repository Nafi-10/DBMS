CREATE TABLE EmployeeStringPractice (
    ID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(30),
    JobCode VARCHAR(20)
);

INSERT INTO EmployeeStringPractice (ID, FirstName, LastName, Email, PhoneNumber, JobCode) VALUES 
(1, '   John   ', 'Doe', 'JOHN.DOE@gmail.com', '555-123-4567', 'HR-001'),
(2, 'sarah', 'CONNOR', 'sarah.c@yahoo.com', '(555) 987-6543', 'IT-002'),
(3, '  Michael', 'Scott  ', 'mscott@dundermifflin.com', '555 111 2222', 'MNG-001'),
(4, 'Jim', 'Halpert', 'jim.halpert@gnail.com', '555-333-4444', 'SAL-003'),
(5, 'Dwight', 'Schrute.', 'dwight@FARMS.COM', '555.555.0000', 'SAL-004'),
(6, '  Pam  ', 'Beesly', 'pam.bees@gmail.com', '555-888-9999', 'ADM-005'),
(7, 'andy', 'bernard', 'ANDY@CORNELL.EDU', '555-000-1111', 'SAL-006'),
(8, 'Stanley', 'Hudson', 'stanley@crossword.net', '555-222-3333', 'SAL-007'),
(9, 'Kevin', 'Malone', 'kevin.m@chili.com', '555/444/5555', 'ACC-008'),
(10, 'Angela', '   Martin', 'angela@cats.org', '555-777-6666', 'ACC-009'),
(11, 'oscar', 'Martinez', 'oscar.m@accounting.net', '555-999-8888', 'ACC-010'),
(12, 'Phyllis', 'Vance', 'phyllis@vancerefrigeration.com', '555-121-2121', 'SAL-011'),
(13, 'Meredith', 'Palmer', 'meredith@supply.com', '555-343-4343', 'SUP-012'),
(14, 'Creed', 'Bratton', 'creed@unknown', '000-000-0000', 'QUA-013'),
(15, '   Ryan   ', 'Howard', 'RYAN@TEMP.COM', '555-555-5555', 'TMP-014');

SELECT * FROM EmployeeStringPractice

-----TRIM----

SELECT ID,
FirstName AS Orginal_First,
TRIM(FirstName) AS CLear_First,
LastName AS Orginal_Last,
TRIM(LastName) AS CLean_Last
FROM EmployeeStringPractice

-----Upper/Lower---
SELECT 
FirstName,
LOWER(Email) AS CLean_Email,
UPPER(FIrstName) AS Upper_First_Name,
UPPER(LastName) AS Upper_Last_Name
FROM EmployeeStringPractice 

-----Replace---
SELECT
FirstName,

LOWER(REPLACE(Email,'gnail.com','gmail.com')) AS FixedMail,
REPLACE(PhoneNumber,'/','-') AS FixedPhoneNumber
FROM EmployeeStringPractice 

---Substring---
SELECT 
FirstName,
JobCode,
SUBSTRING(JobCode, 1,3) AS Department
FROM EmployeeStringPractice 

--Length Check (Data Validation)--

SELECT
FirstName,
LEN(FirstName) AS Orginal_Length,
LEN(TRIM(FirstName)) AS CLean_Length
FROM EmployeeStringPractice;

--Concatenation--

SELECT
UPPER(CONCAT(TRIM(FirstName),' ',TRIM(LastName))) AS Full_Name,
LOWER(Email) AS Email,
SUBSTRING(JobCode, 1, 3) AS Dept
FROM EmployeeStringPractice;