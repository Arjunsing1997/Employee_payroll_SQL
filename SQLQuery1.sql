--------UC1-------------
create database payroll_service;
use payroll_service;

----------UC2------------
--Cerating employee payroll table-----
CREATE TABLE employee_payroll(
Id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
Name varchar(20),
Salary float(20),
StartDate DATE,
);

-------UC3----------
----Inserting values into Employee_payroll table

INSERT INTO employee_payroll VALUES
('Arjun','30000','12-dec-2016'),
('Raj','40000','12-jan-2010'),
('Ramesh','15000','20-mar-2018'),
('SURESH','10000','15-FEB-2010'),
('Rashmi','50000','13-apr-2019');

------UC4---------
---Retrieving all the Tables valuue----
SELECT * FROM employee_payroll;
----Retrieving only name and salary----
SELECT Name,Salary FROM employee_payroll;

-----------------UC5---------------------
-----Retrieving data fusing WHERE keyword---
SELECT Id,Name,StartDate,Salary FROM employee_payroll WHERE Name='Arjun' OR Salary = '50000';


------Retrieving data using CAST Keyword--------
SELECT * FROM employee_payroll WHERE StartDate BETWEEN CAST('01-01-2016' as date) AND  CAST(GETDATE() as date);

------------------UC6-------------
------Adding GENDER column to the employee_payroll table using ALTER keyword-------
ALTER TABLE employee_payroll ADD Gender CHAR(1);

-------Updating Gender using UPDATE keyword--------
UPDATE employee_payroll SET Gender='M' WHERE Name='Arjun' or Name= 'Ramesh' or Name='Suresh' or Name='Raj';

UPDATE employee_payroll SET Gender='F' WHERE Name='Rashmi';

----------------UC7------------
------------Finding SUM,AVG,MIN,MAX,COUNT----------
SELECT SUM(Salary) as SumOfSalary FROM employee_payroll WHERE Gender='F' GROUP BY Gender;

SELECT 
AVG(Salary) as Average,
MIN(Salary) as Minimum,
MAX(Salary) as Maximum,
COUNT(Id) as Number_of_Emp,
SUM(Salary) as SumOfSalary
FROM employee_payroll WHERE Gender='M' GROUP BY Gender;


------------UC8---------------
-----Extending employee_payroll table-----------

ALTER TABLE employee_payroll ADD Phone_Number varchar(10);

------Adding column with DEFAULT value-----
ALTER TABLE employee_payroll ADD Emp_Address varchar(20) DEFAULT 'INDIA';

ALTER TABLE employee_payroll ADD Emp_DEPT varchar(10)DEFAULT 'HR';

INSERT INTO employee_payroll VALUES
('SHIVANI','25000','23-aug-2019','F','983364738','Mysore','CS'),
('Shivam','25000','23-feb-2019','M','9833645538',DEFAULT,DEFAULT);

-----------------UC9----------------
------Extending employee_payroll table-------

ALTER TABLE employee_payroll ADD Basic_Pay varchar(10), Deduction FLOAT(20), Taxable_Pay FLOAT(20), Income_Tax Float(20), Net_Pay float(20);

----------UC10-----------------
UPDATE employee_payroll SET Phone_Number='9874637670',Emp_DEPT=DEFAULT;
UPDATE employee_payroll SET Phone_Number='9874888670',Emp_DEPT='Account', Emp_Address = 'Bengaluru', Basic_Pay=12000,Deduction=5000,Taxable_Pay=2300,Income_Tax = 2564,Net_Pay=18000 WHERE Name='Arjun';
UPDATE employee_payroll SET Phone_Number='9874117670',Emp_DEPT='Account', Emp_Address = 'Mysore', Basic_Pay=12000,Deduction=5000,Taxable_Pay=2300,Income_Tax = 2564,Net_Pay=10000 WHERE Name='Raj';
UPDATE employee_payroll SET Phone_Number='9874227670',Emp_DEPT='Head', Emp_Address = 'Mangalore', Basic_Pay=22000,Deduction=16000,Taxable_Pay=5300,Income_Tax = 5564,Net_Pay=22000 WHERE Name='Ramesh';
UPDATE employee_payroll SET Phone_Number='9874887670',Emp_DEPT='Research', Emp_Address = 'Mumbai', Basic_Pay=13000,Deduction=5450,Taxable_Pay=2500,Income_Tax = 2564,Net_Pay=10000 WHERE Name='SURESH';
UPDATE employee_payroll SET Phone_Number='9874887670',Emp_DEPT='Marketing', Emp_Address = 'Noida', Basic_Pay=14000,Deduction=5660,Taxable_Pay=2700,Income_Tax = 3564,Net_Pay=11000 WHERE Name='Rashmi';
UPDATE employee_payroll SET Phone_Number='944887670',Emp_DEPT='Purchasing', Emp_Address = DEFAULT, Basic_Pay=16000,Deduction=5660,Taxable_Pay=2800,Income_Tax = 5564,Net_Pay=14000 WHERE Name='SHIVANI';
UPDATE employee_payroll SET Phone_Number='9878887670',Emp_DEPT='Resource', Emp_Address = 'Bengaluru', Basic_Pay=18000,Deduction=5440,Taxable_Pay=4400,Income_Tax = 4764,Net_Pay=16000 WHERE Name='Shivam';

----------------------------------

INSERT INTO employee_payroll VALUES
('Terissa','48548','20-jan-2020','F','8758989','Kolkatta','Sales','54767',4875,4555,54767,376734),
('Terissa','48548','20-dec-2020','F','8758989','Kolkatta','Marketing','54767',4875,4555,54767,376734);
select * from employee_payroll where Name='Terissa';






