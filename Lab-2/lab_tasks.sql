-- LAB TASK 1
SELECT employee_id, last_name,
hire_date as STARTDATE, job_id
FROM employees;

-- LAB TASK 2
SELECT CONCAT(last_name, ", ", job_id) as EmployeeAndTitle
FROM employees;

-- LAB TASK 3
SELECT DISTINCT job_id from employees;

-- LAB TASK 4
SELECT CONCAT(first_name, " ", last_name) as Name 
FROM employees;

-- LAB TASK 5
SELECT first_name, salary FROM employees;

-- LAB TASK 6
describe departments;