-- ==========================================
-- Create Database
-- ==========================================
CREATE DATABASE IF NOT EXISTS company_sql;

-- Use Database
USE company_sql;

-- ==========================================
-- Create Employees Table
-- ==========================================
CREATE TABLE IF NOT EXISTS Employees1 (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);

-- ==========================================
-- Create Departments Table
-- ==========================================
CREATE TABLE IF NOT EXISTS Departments1 (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50),
    ManagerName VARCHAR(50)
);

-- ==========================================
-- Insert Data into Employees
-- ==========================================
INSERT INTO Employees1 (EmployeeID, Name, Department, Salary)
VALUES
(101, 'Ali', 'IT', 75000.00),
(102, 'Ahmed', 'HR', 60000.00),
(103, 'Sara', 'Finance', 85000.00),
(104, 'Ayesha', 'Marketing', 70000.00),
(105, 'Usman', 'IT', 80000.00);

-- ==========================================
-- Insert Data into Departments
-- ==========================================
INSERT INTO Departments1 (DepartmentID, DepartmentName, ManagerName)
VALUES
(1, 'IT', 'Bilal'),
(2, 'HR', 'Fatima'),
(3, 'Finance', 'Hassan'),
(4, 'Marketing', 'Zain');

-- ==========================================
-- Display Tables
-- ==========================================
SELECT * FROM Employees1;

SELECT * FROM Departments1;

-- ==========================================
-- WHERE Clause
-- ==========================================

-- IT Department Employees
SELECT *
FROM Employees1
WHERE Department = 'IT';

-- Salary Greater Than 70000
SELECT *
FROM Employees1
WHERE Salary > 70000;

-- ==========================================
-- GROUP BY
-- ==========================================

SELECT Department, COUNT(*) AS Total_Employees
FROM Employees1
GROUP BY Department;

-- ==========================================
-- GROUP BY + HAVING
-- ==========================================

SELECT Department, COUNT(*) AS Total_Employees
FROM Employees1
GROUP BY Department
HAVING COUNT(*) > 1;

-- ==========================================
-- Average Salary by Department
-- ==========================================

SELECT Department, AVG(Salary) AS Average_Salary
FROM Employees1
GROUP BY Department;

-- ==========================================
-- Total Salary by Department
-- ==========================================

SELECT Department, SUM(Salary) AS Total_Salary
FROM Employees1
GROUP BY Department;

-- ==========================================
-- Current Database
-- ==========================================

SELECT DATABASE();