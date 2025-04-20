USE ORG;

-- Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.
SELECT FIRST_NAME AS WORKER_NAME FROM WORKER; 

-- Q-2. Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case.
SELECT UPPER(FIRST_NAME) FROM WORKER;
-- OR
SELECT Department
FROM WORKER
GROUP BY Department;

-- Q-3. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
SELECT DISTINCT Department FROM WORKER;

-- Q-4. Write an SQL query to print the first three characters of FIRST_NAME from Worker table.
SELECT SUBSTRING(FIRST_NAME,1,3) FROM WORKER;

-- Q-5. Write an SQL query to find the position of the alphabet (‘b’) in the first name column ‘Amitabh’ from Worker table.
SELECT INSTR(FIRST_NAME, "B") FROM WORKER WHERE FIRST_NAME = "AMITABH";

-- Q-6. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.
SELECT RTRIM(FIRST_NAME) FROM WORKER;

-- Q-7. Write an SQL query to print the DEPARTMENT from Worker table after removing white spaces from the left side.
SELECT LTRIM(FIRST_NAME) FROM WORKER;

-- Q-8. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.
SELECT DISTINCT LENGTH(DEPARTMENT) FROM WORKER;

-- Q-9. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.
SELECT REPLACE(FIRST_NAME , 'a', 'A'  ) FROM WORKER;

-- Q-10. Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME. A space char should separate them.
SELECT CONCAT(FIRST_NAME, " ", LAST_NAME) AS COMPLETE_NAME FROM WORKER;

-- Q-11. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
SELECT *
FROM WORKER
ORDER BY FIRST_NAME;

-- Q-12. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
SELECT *
FROM WORKER
ORDER BY FIRST_NAME, DEPARTMENT DESC;

-- Q-13. Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table.
SELECT * FROM WORKER
WHERE FIRST_NAME = "VIPUL" OR FIRST_NAME = "SATISH";

-- Q-14. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.
SELECT * FROM WORKER
WHERE FIRST_NAME NOT IN ("VIPUL", "SATISH");

-- Q-15. Write an SQL query to print details of Workers with DEPARTMENT name as “Admin*”.
SELECT * FROM WORKER
WHERE DEPARTMENT  = "ADMIN";

-- Q-16. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.
SELECT * FROM WORKER
WHERE FIRST_NAME LIKE "%a%";

-- Q-17. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.
SELECT * FROM WORKER
WHERE FIRST_NAME LIKE "%a";

-- Q-18. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
SELECT * FROM WORKER
WHERE FIRST_NAME LIKE ("_____h");

-- Q-19. Write an SQL query to print details of the Workers whose SALARY lies between 100 000 and 500 000.
SELECT * FROM WORKER
WHERE SALARY BETWEEN 100001 AND 499000;

-- Q-20. Write an SQL query to print details of the Workers who have joined in Feb’2014.
SELECT * FROM WORKER
WHERE YEAR(JOINING_DATE) = 2014
AND MONTH(JOINING_DATE) = 2;

-- Q-21. Write an SQL query to fetch the count of employees working in the department ‘Admin’.
SELECT *
FROM WORKER
WHERE DEPARTMENT  = "ADMIN";

-- Q-22. Write an SQL query to fetch worker full names with salaries >= 50000 and <= 100000.
SELECT CONCAT(FIRST_NAME , " " , LAST_NAME) as full_name
FROM WORKER
WHERE SALARY BETWEEN 50000 AND 100000; -- BETWEEN IS INCLUSIVE

-- Q-23. Write an SQL query to fetch the number of workers for each department in the descending order.
SELECT DEPARTMENT, COUNT(*)
FROM WORKER
GROUP BY DEPARTMENT
ORDER BY COUNT(*) DESC;

-- Q-24. Write an SQL query to print details of the Workers who are also Managers.
SELECT *
FROM WORKER AS W
INNER JOIN TITLE AS T
ON W.WORKER_ID = T.WORKER_REF_ID
WHERE T.WORKER_TITLE = 'Manager';

-- Q-25. Write an SQL query to fetch the count (more than 1) of same titles.
SELECT WORKER_TITLE, COUNT(*)
FROM TITLE
GROUP BY WORKER_TITLE
HAVING COUNT(*) > 1;

-- Q-26. Write an SQL query to show only odd rows from a table.
SELECT * FROM WORKER
WHERE MOD (WORKER_ID,2) <> 0;

-- Q-27. Write an SQL query to show only even rows from a table.
SELECT * FROM WORKER
WHERE MOD (WORKER_ID,2) = 0;

-- Q-28. Write an SQL query to clone a new table from another table.
CREATE TABLE worker_clone LIKE WORKER;
INSERT INTO worker_clone
SELECT * FROM WORKER;
DROP TABLE WORKER_CLONE;

-- Q-29. Write an SQL query to fetch intersecting records of two tables.
SELECT * FROM WORKER;
SELECT * FROM WORKERCLONE;

SELECT *
FROM WORKER AS W1
INNER JOIN WORKERCLONE AS W2
ON W1.WORKER_ID = W2.WORKER_ID;

-- Q-30. Write an SQL query to show records from one table that another table does not have.
SELECT *
FROM WORKER AS W1
LEFT JOIN WORKERCLONE AS W2	
ON W1.WORKER_ID = W2.WORKER_ID
WHERE W2.WORKER_ID IS NULL;

-- Q-31. Write an SQL query to show the current date and time.
SELECT now();
SELECT curdate();

-- Q-32. Write an SQL query to show the top n (say 5) records of a table order by descending salary.
SELECT FIRST_NAME, SALARY
FROM WORKER
ORDER BY SALARY DESC
LIMIT 5;

-- Q-33. Write an SQL query to determine the nth (say n=5) highest salary from a table.
SELECT * FROM WORKER
ORDER BY SALARY DESC
LIMIT 1
OFFSET 4;

-- Q-34. Write an SQL query to determine the 5th highest salary without using LIMIT keyword.
SELECT * FROM WORKER w1
WHERE 4 = (
	SELECT COUNT(DISTINCT w2.salary)
    FROM WORKER w2
    WHERE w2.salary > w1.salary
);

-- Q-35. Write an SQL query to fetch the list of employees with the same salary.
SELECT A.first_name, B.first_name
FROM Worker A, Worker B
WHERE A.WORKER_ID > B.WORKER_ID
AND A.SALARY = B.SALARY;

-- Q-36. Write an SQL query to show the second highest salary from a table using a subquery.
SELECT * FROM WORKER w1
WHERE 1=(
	SELECT COUNT(DISTINCT w2.salary)
    FROM WORKER w2
    WHERE w2.SALARY > w1.salary
);

-- Q-37. Write an SQL query to show one row twice in results from a table.
SELECT * FROM WORKER
WHERE WORKER_ID =2
UNION ALL
SELECT * FROM WORKER
WHERE WORKER_ID =2;

-- Q-38. Write an SQL query to list worker_id who does not get bonus.
 SELECT W.WORKER_ID AS NO_BONUS_IDS
 FROM WORKER W
 LEFT JOIN BONUS AS B
 ON W.WORKER_ID = B.WORKER_REF_ID
 WHERE B.WORKER_REF_ID IS NULL;

-- Q-39. Write an SQL query to fetch the first 50% records from a table.
SELECT *
FROM WORKER
WHERE WORKER_ID <= (
	SELECT COUNT(WORKER_ID)/2
    FROM WORKER
);

-- Q-40. Write an SQL query to fetch the departments that have less than 4 people in it.
SELECT Department, COUNT(*) as total_number_of_employee
FROM WORKER
GROUP BY Department
HAVING total_number_of_employee < 4;

-- Q-41. Write an SQL query to show all departments along with the number of people in there.
SELECT Department, COUNT(*) as total_number_of_employee
FROM WORKER
GROUP BY Department;

-- Q-42. Write an SQL query to show the last record from a table.
SELECT * FROM WORKER
ORDER BY WORKER_ID DESC
LIMIT 1;

-- Q-43. Write an SQL query to fetch the first row of a table.
SELECT * FROM WORKER
LIMIT 1;

-- Q-44. Write an SQL query to fetch the last five records from a table.
SELECT * FROM WORKER
ORDER BY WORKER_ID DESC
LIMIT 5;

-- Q-45. Write an SQL query to print the name of employees having the highest salary in each department.
SELECT Department, COUNT(*) as total_number_of_employee
FROM WORKER
GROUP BY Department;

-- Q-46. Write an SQL query to fetch three max salaries from a table using a co-related subquery.

-- Q-47. Write an SQL query to fetch three min salaries from a table using a co-related subquery.

-- Q-48. Write an SQL query to fetch nth max salaries from a table.

-- Q-49. Write an SQL query to fetch departments along with the total salaries paid for each of them.

-- Q-50. Write an SQL query to fetch the names of workers who earn the highest salary.