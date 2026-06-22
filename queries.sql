-- Create Database
CREATE DATABASE CompanyDB;

USE CompanyDB;

-- Create Employee Table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Role VARCHAR(50),
    Salary INT,
    Email VARCHAR(100)
);

-- Insert Sample Data
INSERT INTO Employees VALUES
(1,'Rahul','Developer',60000,'rahul@gmail.com'),
(2,'Priya','Designer',45000,'priya@gmail.com'),
(3,'Aman','Developer',70000,'aman@gmail.com'),
(4,'Neha','Marketing',50000,'neha@gmail.com');

-- WHERE Clause
SELECT * FROM Employees
WHERE Role='Developer';

-- Comparison Operator
SELECT * FROM Employees
WHERE Salary >= 50000;

-- LIKE Operator
SELECT * FROM Employees
WHERE Email LIKE '%@gmail.com';

-- GROUP BY
SELECT Role, COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY Role;

-- SUM
SELECT SUM(Salary) AS TotalSalary
FROM Employees;

-- AVG
SELECT AVG(Salary) AS AverageSalary
FROM Employees;

-- HAVING
SELECT Role, COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY Role
HAVING COUNT(*) > 1;

-- ORDER BY
SELECT Name, Salary
FROM Employees
ORDER BY Salary DESC;