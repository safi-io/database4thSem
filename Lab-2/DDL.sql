-- Create the database
CREATE DATABASE CompanyDBLAB2;
USE CompanyDBLAB2;

-- Create the employees table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    job_id VARCHAR(20),
    hire_date DATE,
    salary DECIMAL(10, 2)
);

-- Insert mock data into employees table
INSERT INTO employees (first_name, last_name, job_id, hire_date, salary) VALUES
('John', 'Doe', 'HR_MGR', '2015-06-22', 60000),
('Alice', 'Smith', 'DEV', '2018-09-15', 75000),
('Bob', 'Brown', 'DEV', '2017-03-10', 72000),
('Charlie', 'Davis', 'HR_ASSIST', '2019-11-25', 50000),
('Emily', 'Johnson', 'FIN_MGR', '2016-07-18', 82000),
('Frank', 'White', 'DEV', '2020-12-30', 68000),
('Grace', 'Miller', 'FIN_ANALYST', '2019-08-05', 56000);

-- Create the departments table
CREATE TABLE departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100),
    location VARCHAR(100)
);

-- Insert mock data into departments table
INSERT INTO departments (department_name, location) VALUES
('Human Resources', 'New York'),
('Development', 'San Francisco'),
('Finance', 'Chicago'),
('Marketing', 'Los Angeles');

-- Verify data
SELECT * FROM employees;
SELECT * FROM departments;
