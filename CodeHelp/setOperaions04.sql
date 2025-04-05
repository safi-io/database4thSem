CREATE DATABASE IF NOT EXISTS software_house;
USE software_house;

-- UNION
SELECT * FROM human_resource
UNION
SELECT * FROM accounts_finance;

-- INTERSECTION
SELECT hr.emp_name common_employee
FROM human_resource hr
JOIN accounts_finance af
ON hr.emp_name = af.emp_name; 

-- (MINUS) A-B
SELECT *
FROM human_resource hr
LEFT JOIN accounts_finance af
ON hr.emp_name = af.emp_name
WHERE af.emp_name IS NULL;

CREATE TABLE human_resource (
	emp_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_name VARCHAR(50)
);
INSERT INTO human_resource (emp_name) VALUES ("kabir"),("umair"),("ali"),("aleena"),("ihtisham");
SELECT * FROM human_resource;

CREATE TABLE accounts_finance (
	emp_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_name VARCHAR(50)
);
INSERT INTO accounts_finance (emp_name) VALUES ("safi"),("ahmad"),("ali"),("aleena"),("bilal");
SELECT * FROM accounts_finance;