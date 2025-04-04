CREATE DATABASE IF NOT EXISTS restaurant;
USE restaurant;

CREATE TABLE customers(
	cust_id INT PRIMARY KEY,
    cust_name VARCHAR(50)
);
SELECT * FROM customers;

CREATE TABLE orders(
	order_id INT PRIMARY KEY,
    order_price NUMERIC(10,2),
    cust_id INT,
    
    FOREIGN KEY (cust_id) REFERENCES customers(cust_id)
		ON DELETE CASCADE
        ON UPDATE CASCADE
);
SELECT * FROM orders;

-- INNER JOIN
SELECT C.*, O.*
FROM customers AS C 
INNER JOIN
orders AS O
ON C.cust_id=O.cust_id;

-- LEFT JOIN
SELECT C.*, O.*
FROM customers AS C 
LEFT JOIN
orders AS O
ON C.cust_id=O.cust_id;

-- RIGHT JOIN
SELECT C.*, O.*
FROM customers AS C
RIGHT JOIN
orders AS O
ON C.cust_id=O.cust_id;

-- FULL JOIN || FULL OUTER JOIN (Union of Left Join and Right Join)
SELECT C.*, O.*
FROM customers AS C 
LEFT JOIN
orders AS O
ON C.cust_id=O.cust_id

UNION

SELECT C.*, O.*
FROM customers AS C
RIGHT JOIN
orders AS O
ON C.cust_id=O.cust_id;

-- CROSS JOIN
SELECT C.*, O.*
FROM customers AS C
CROSS JOIN orders AS O;

-- SELF JOIN
-- when we need to fetch some data, from same table

-- NATURAL JOIN

SELECT * 
FROM customers
NATURAL JOIN orders;


INSERT INTO customers (cust_id, cust_name) VALUES
(1, 'Alice Johnson'),
(2, 'Bob Smith'),
(3, 'Charlie Brown'),
(4, 'David Williams'),
(5, 'Eva Davis'),
(6, 'Frank Martin'),
(7, 'Grace Lee'),
(8, 'Hannah Scott'),
(9, 'Ian White'),
(10, 'Jack Taylor');


INSERT INTO orders (order_id, order_price, cust_id) VALUES
(101, 250.00, 1),
(102, 100.50, 2),
(103, 75.25, 3),
(104, 300.00, 4),
(105, 150.75, 5),
(106, 200.00, 6),
(107, 50.00, 7),
(108, 180.40, 8),
(109, 99.99, 1),
(110, 500.00, 2),
(111, 89.99, 3),
(112, 220.00, 4),
(113, 340.75, 5),
(114, 120.50, 6),
(115, 455.00, 7),
(116, 90.90, 1),
(117, 60.00, 2),
(118, 130.75, 6),
(119, 77.50, 7),
(120, 40.00, 8);

INSERT INTO orders
VALUES (121, 90.87, 11);