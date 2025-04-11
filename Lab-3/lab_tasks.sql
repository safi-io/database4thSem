-- Lab Task 1
SELECT last_name, department_id FROM employees WHERE employee_id = 115;




-- Lab Task 2
SELECT last_name, salary FROM employees
WHERE salary NOT BETWEEN 5000 AND 12000;

-- Lab Task 3
SELECT last_name, job_id, hire_date FROM employees 
WHERE last_name IN ('Matos', 'Taylor') 
ORDER BY hire_date ASC;

-- Lab Task 4
SELECT last_name, department_id FROM employees 
WHERE department_id IN (20, 50) 
ORDER BY last_name ASC;

-- Lab Task 5
SELECT last_name, job_id FROM employees 
WHERE department_id IS NULL;

-- Lab Task 6
SELECT last_name, salary, commission_pct FROM employees 
WHERE commission_pct IS NOT NULL 
ORDER BY 2 DESC, commission_pct DESC;

-- Lab Task 7
SELECT employee_id, last_name, salary, department_id FROM employees 
WHERE manager_id = 201 
ORDER BY salary ASC;


-- Lab Task 8
SELECT last_name FROM employees 
WHERE last_name LIKE '%a%' AND last_name LIKE '%e%';

-- Lab Task 9
SELECT last_name, job_id, salary FROM employees 
WHERE job_id IN ('DEV') AND salary
NOT IN (2500, 3500, 7000);
