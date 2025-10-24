SELECT * FROM UpandDel

UPDATE UpandDel 
SET Budget = 500 
WHERE ProjectName = 'Annual Report 2023'

UPDATE UpandDel 
SET AssignedTo =' Jawad ',DueDate= '2025-10-25'
WHERE ProjectName='Develop Mobile App';

UPDATE UpandDel
SET AssignedTo = 'Hridita',DueDate = '2025-10-26',Budget=2000,Status='Running'
WHERE ProjectName = 'Create Onboarding Docs'

DELETE FROM UpandDel WHERE ID = 3