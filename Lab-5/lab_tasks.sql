-- Lab Task 1
SELECT
    ROUND(MAX(salary)) AS Maximum,
    ROUND(MIN(salary)) AS Minimum,
    ROUND(SUM(salary)) AS Sum,
    ROUND(AVG(salary)) AS Average
FROM
    employees;

-- Lab Task 2
SELECT
    job_id,
    COUNT(*) AS NumberOfPeopleWithSameJob
FROM
    employees
GROUP BY
    job_id;

-- Lab Task 3
SELECT
    COUNT(DISTINCT manager_id) AS NumberOfManagers
FROM
    employees
WHERE
    manager_id IS NOT NULL;

-- Lab Task 4
SELECT
    ROUND(MAX(salary) - MIN(salary)) AS DIFFERENCE
FROM
    employees;

-- Lab Task 5
SELECT
    manager_id,
    MIN(salary) AS LowestSalary
FROM
    employees
WHERE
    manager_id IS NOT NULL
GROUP BY
    manager_id
HAVING
    MIN(salary) > 6000
ORDER BY
    LowestSalary DESC;

-- Lab Task 6
SELECT
    e.job_id AS Job,
    e.salary AS SalaryByDepartment,
    (SELECT SUM(salary) FROM employees WHERE job_id = e.job_id) AS TotalSalaryForJob
FROM
    employees e
WHERE
    e.department_id IN (20, 50, 80, 90)
ORDER BY
    e.job_id, e.department_id;