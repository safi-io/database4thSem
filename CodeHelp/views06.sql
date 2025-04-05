-- VIEWS IN SQL

USE restaurant;
SELECT * FROM customers;
SELECT * FROM orders;

-- CREATING VIEW
CREATE VIEW mini_order AS
SELECT order_id, order_price FROM orders;

-- VIEWING VIEW
SELECT * FROM mini_order;

-- MODIFYING VIEW
ALTER VIEW mini_order AS 
SELECT order_id, cust_id FROM orders;

-- DROP VIEW
DROP VIEW IF EXISTS mini_order;