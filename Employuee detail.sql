-- Create Database
CREATE DATABASE company;

-- Use Database
USE company_ds;

-- Create Employees Table
CREATE TABLE Employees1 (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);

-- Create Departments Table
CREATE TABLE Departments1 (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50),
    ManagerName VARCHAR(50)
);

-- Insert Data into Employees
INSERT INTO Employees1 (EmployeeID, Name, Department, Salary)
VALUES
(101, 'Ali', 'IT', 75000.00),
(102, 'Ahmed', 'HR', 60000.00),
(103, 'Sara', 'Finance', 85000.00),
(104, 'Ayesha', 'Marketing', 70000.00),
(105, 'Usman', 'IT', 80000.00);
SELECT * FROM Employees1;
TRUNCATE TABLE Employees1;

-- Insert Data into Departments
INSERT INTO Employees1 (EmployeeID, Name, Department, Salary)
VALUES
(101, 'Ali', 'IT', 75000.00),
(102, 'Ahmed', 'HR', 60000.00),
(103, 'Sara', 'Finance', 85000.00),
(104, 'Ayesha', 'Marketing', 70000.00),
(105, 'Usman', 'IT', 80000.00);
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