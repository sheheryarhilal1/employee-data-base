CREATE DATABASE Employee;
USE Employee;

CREATE TABLE Employees1(
EmployeeID INT PRIMARY KEY,
Name VARCHAR(50),
Department VARCHAR(50),
Salary DECIMAL(10,2)
);

CREATE TABLE Departments1(
DepartmentID INT PRIMARY KEY,
DepartmentName VARCHAR(50),
ManagerName VARCHAR(50)
);

SHOW DATABASES;

SHOW TABLES;

DESCRIBE Employees1;

DESCRIBE Departments1;

INSERT INTO Employees1
VALUES
(101,'Ali','IT',75000),
(102,'Ahmed','HR',60000),
(103,'Sara','Finance',85000),
(104,'Ayesha','Marketing',70000),
(105,'Usman','IT',80000);

INSERT INTO Departments1
VALUES
(1,'IT','Bilal'),
(2,'HR','Hina'),
(3,'Finance','Sana'),
(4,'Marketing','Asad');

-- Display Employees Table
SELECT * FROM Employees1;

-- Display Departments Table
SELECT * FROM Departments1;
SELECT *
FROM Employees1
WHERE Department = 'IT';

SELECT DATABASE();

SELECT *
FROM Employees1
WHERE Salary > 70000;

SELECT Department, COUNT(*) AS Total_Employees1
FROM Employees1
GROUP BY Department;

SELECT *
FROM Employees1
ORDER BY Salary;

SELECT *
FROM Employees1
ORDER BY Salary DESC;

SELECT *
FROM Employees1
ORDER BY Name;

SELECT DISTINCT Department
FROM Employees1;

SELECT *
FROM Employees1
WHERE Name LIKE 'A%';

SELECT *
FROM Employees1
WHERE Name LIKE '%a';

SELECT *
FROM Employees1
WHERE Name LIKE '%ar%';

SELECT *
FROM Employees1
WHERE Salary BETWEEN 70000 AND 80000;


SELECT *
FROM Employees1
WHERE Department='IT'
AND Salary>75000;

SELECT *
FROM Employees1
WHERE Department='HR'
OR Department='Finance';

SELECT *
FROM Employees1
WHERE NOT Department='IT';