CREATE DATABASE HRLAB4;
DROP DATABASE HR;
USE HR;

-- Employees table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    job_id VARCHAR(20),
    hire_date DATE,
    salary DECIMAL(10,2),
    commission_pct DECIMAL(5,2)
);

-- Insert mock data
INSERT INTO employees (first_name, last_name, job_id, hire_date, salary, commission_pct) VALUES
('John', 'Doe', 'IT_PROG', '2020-06-15', 60000, 0.05),
('Alice', 'Johnson', 'HR_REP', '2019-07-22', 50000, NULL),
('Mark', 'Smith', 'FIN_MGR', '2018-09-30', 75000, 0.10),
('James', 'Anderson', 'SALES_REP', '2021-05-12', 55000, 0.07),
('Michael', 'Williams', 'SALES_REP', '2021-08-19', 58000, NULL),
('Jennifer', 'Brown', 'IT_PROG', '2017-11-03', 67000, 0.03);

-- Departments table (for structure)
CREATE TABLE departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(50),
    location VARCHAR(50)
);

-- Insert mock data
INSERT INTO departments (department_name, location) VALUES
('HR', 'New York'),
('IT', 'San Francisco'),
('Finance', 'Chicago'),
('Sales', 'Los Angeles');
