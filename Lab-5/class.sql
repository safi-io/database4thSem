CREATE DATABASE IF NOT EXISTS lab_5;
USE lab_5;

CREATE TABLE teachers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

-- Aggregation Functions
SELECT min(salary) AS minimum_salary_from_teachers FROM teachers;
SELECT max(salary) AS maximum_salary_from_teachers FROM teachers;
SELECT count(distinct id) AS total_teachers FROM teachers;
SELECT sum(salary) AS total_salary FROM teachers;
SELECT avg(salary) AS avearge_salary FROM teachers;

-- Group By
SELECT department
FROM teachers
GROUP BY department
HAVING count(id) > 3
;

SELECT department, AVG(salary)
FROM teachers
GROUP BY department
HAVING AVG(salary) < 70000;