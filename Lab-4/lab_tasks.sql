
-- Lab Task 1
SELECT employee_id, last_name, salary, 
       ROUND(salary * 1.155) AS New_Salary 
FROM employees;

-- Lab Task 2
SELECT CONCAT(UCASE(LEFT(last_name, 1)), LCASE(SUBSTRING(last_name, 2))) AS formatted_last_name, 
       LENGTH(last_name) AS name_length
FROM employees
WHERE last_name LIKE 'J%' OR last_name LIKE 'A%' OR last_name LIKE 'M%'
ORDER BY last_name;

-- Lab Task 3
SELECT last_name, 
       CEIL(TIMESTAMPDIFF(MONTH, hire_date, CURDATE())) AS MONTHS_WORKED
FROM employees
ORDER BY MONTHS_WORKED DESC;

-- Lab Task 4:
SELECT last_name, 
       COALESCE(CONCAT('$', FORMAT(commission_pct * salary, 2)), 'No Commission') AS COMM
FROM employees;
