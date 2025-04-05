CREATE DATABASE CompanyDB;
USE CompanyDB;

-- Employee Table
CREATE TABLE Employee (
    id INT PRIMARY KEY,
    fname VARCHAR(50),
    lname VARCHAR(50),
    Age INT,
    emailID VARCHAR(100),
    PhoneNo VARCHAR(20),
    City VARCHAR(50)
);

-- Client Table
CREATE TABLE Client (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    emailID VARCHAR(100),
    PhoneNo VARCHAR(20),
    City VARCHAR(50),
    empID INT,
    FOREIGN KEY (empID) REFERENCES Employee(id)
);

-- Project Table
CREATE TABLE Project (
    id INT PRIMARY KEY,
    empID INT,
    name VARCHAR(50),
    startdate DATE,
    clientID INT,
    FOREIGN KEY (empID) REFERENCES Employee(id),
    FOREIGN KEY (clientID) REFERENCES Client(id)
);

SELECT fname
FROM Employee
WHERE Age
IN ( SELECT Age FROM Employee WHERE Age < 30 );

SELECT fname, lname
FROM Employee
WHERE id 
IN
(SELECT empID FROM Project
GROUP BY empID
HAVING count(*) > 1);

-- Single Value Sub Query
SELECT id FROM Employee WHERE AGE >
(SELECT avg(Age) from Employee);

-- Sub Query using FROM
SELECT max(Age) FROM (
SELECT * FROM Employee 
WHERE fname LIKE "%a%") AS temporary_table;

-- Co-Releated Sub Query, (Finding Third Oldest Employee of Company)
SELECT * FROM Employee e1
WHERE 3 = (
	SELECT count(e2.age)
    FROM Employee e2
    WHERE e2.age >= e1.age
);

-- Insert data into Employee
INSERT INTO Employee (id, fname, lname, Age, emailID, PhoneNo, City) VALUES
(1, 'Aman', 'Proto', 32, 'aman@gmail.com', '898', 'Delhi'),
(2, 'Yagya', 'Narayan', 44, 'yagya@gmail.com', '222', 'Palam'),
(3, 'Rahul', 'BD', 22, 'rahul@gmail.com', '444', 'Kolkata'),
(4, 'Jatin', 'Hermit', 31, 'jatin@gmail.com', '666', 'Raipur'),
(5, 'PK', 'Pandey', 21, 'pk@gmail.com', '555', 'Jaipur');

-- Insert data into Client
INSERT INTO Client (id, first_name, last_name, age, emailID, PhoneNo, City, empID) VALUES
(1, 'Mac', 'Rogers', 47, 'mac@hotmail.com', '333', 'Kolkata', 3),
(2, 'Max', 'Poirier', 27, 'max@gmail.com', '222', 'Kolkata', 3),
(3, 'Peter', 'Jain', 24, 'peter@abc.com', '111', 'Delhi', 1),
(4, 'Sushant', 'Aggarwal', 23, 'sushant@yahoo.com', '45454', 'Hyderabad', 5),
(5, 'Pratap', 'Singh', 36, 'p@xyz.com', '77767', 'Mumbai', 2);

-- Insert data into Project
INSERT INTO Project (id, empID, name, startdate, clientID) VALUES
(1, 1, 'A', '2021-04-21', 3),
(2, 2, 'B', '2021-03-12', 1),
(3, 3, 'C', '2021-01-16', 5),
(4, 3, 'D', '2021-04-27', 2),
(5, 5, 'E', '2021-05-01', 4);
