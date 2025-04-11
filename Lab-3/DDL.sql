-- Create the database
CREATE DATABASE EmployeeDBLAB3;
USE EmployeeDBLAB3;

-- Create the employees table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    job_id VARCHAR(20),
    hire_date DATE,
    salary DECIMAL(10, 2),
    commission_pct DECIMAL(5, 2) NULL,
    department_id INT NULL,
    manager_id INT NULL
);

-- Create the departments table
CREATE TABLE departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100),
    location VARCHAR(100)
);

-- Create the jobs table
CREATE TABLE jobs (
    job_id VARCHAR(20) PRIMARY KEY,
    job_title VARCHAR(100)
);

-- Insert mock data into departments table
INSERT INTO departments (department_id, department_name, location) VALUES
(10, 'Human Resources', 'New York'),
(20, 'Development', 'San Francisco'),
(30, 'Finance', 'Chicago'),
(40, 'Marketing', 'Los Angeles'),
(50, 'Sales', 'Miami');

-- Insert mock data into jobs table
INSERT INTO jobs (job_id, job_title) VALUES
('HR_MGR', 'Human Resources Manager'),
('DEV', 'Developer'),
('FIN_MGR', 'Finance Manager'),
('SALES_REP', 'Sales Representative'),
('STOCK_CLERK', 'Stock Clerk');

-- Insert mock data into employees table
INSERT INTO employees (employee_id, first_name, last_name, job_id, hire_date, salary, commission_pct, department_id, manager_id) VALUES
(101, 'John', 'Doe', 'HR_MGR', '2015-06-22', 60000, NULL, 10, 103),
(102, 'Alice', 'Smith', 'DEV', '2018-09-15', 75000, NULL, 20, 103),
(103, 'Bob', 'Brown', 'DEV', '2017-03-10', 72000, NULL, 20, NULL),
(104, 'Charlie', 'Davis', 'SALES_REP', '2019-11-25', 50000, 0.1, 50, 201),
(105, 'Emily', 'Johnson', 'FIN_MGR', '2016-07-18', 82000, NULL, 30, 201),
(106, 'Frank', 'White', 'DEV', '2020-12-30', 68000, NULL, 20, 103),
(107, 'Grace', 'Miller', 'STOCK_CLERK', '2019-08-05', 56000, NULL, 50, 124),
(108, 'David', 'Matos', 'SALES_REP', '2021-04-12', 45000, 0.15, 50, 201),
(109, 'Sophia', 'Taylor', 'STOCK_CLERK', '2022-07-22', 30000, NULL, 50, 124),
(110, 'Michael', 'Anderson', 'SALES_REP', '2015-12-15', 49000, 0.12, 50, 201),
(111, 'Sarah', 'Parker', 'DEV', '2016-03-05', 74000, NULL, NULL, 103),
(112, 'Lucas', 'Garcia', 'STOCK_CLERK', '2018-10-10', 3500, NULL, 50, 124),
(113, 'Emma', 'Williams', 'SALES_REP', '2017-11-18', 2500, 0.08, 50, 201),
(114, 'Daniel', 'Evans', 'FIN_MGR', '2015-09-28', 92000, NULL, 30, 201),
(115, 'Olivia', 'Martinez', 'DEV', '2016-06-12', 5300, NULL, 20, 103);

-- Verify data
SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM jobs;
