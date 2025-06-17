use leetcodesql;

SELECT NAME
FROM SALESPERSON
WHERE NAME NOT IN (SELECT S.NAME
FROM SALESPERSON S
LEFT JOIN ORDERS O
ON S.SALES_ID = O.SALES_ID
LEFT JOIN COMPANY C
ON O.COM_ID = C.COM_ID
WHERE C.NAME = "RED");

Create table If Not Exists SalesPerson (sales_id int, name varchar(255), salary int, commission_rate int, hire_date date);
Create table If Not Exists Company (com_id int, name varchar(255), city varchar(255));
Create table If Not Exists Orders (order_id int, order_date date, com_id int, sales_id int, amount int);
Truncate table SalesPerson;
INSERT INTO SalesPerson (sales_id, name, salary, commission_rate, hire_date) VALUES (1, 'John', 100000, 6, '2006-04-01');
INSERT INTO SalesPerson (sales_id, name, salary, commission_rate, hire_date) VALUES (2, 'Amy', 12000, 5, '2010-05-01');
INSERT INTO SalesPerson (sales_id, name, salary, commission_rate, hire_date) VALUES (3, 'Mark', 65000, 12, '2008-12-25');
INSERT INTO SalesPerson (sales_id, name, salary, commission_rate, hire_date) VALUES (4, 'Pam', 25000, 25, '2005-01-01');
INSERT INTO SalesPerson (sales_id, name, salary, commission_rate, hire_date) VALUES (5, 'Alex', 5000, 10, '2007-02-03');
Truncate table Company;
insert into Company (com_id, name, city) values ('1', 'RED', 'Boston');
insert into Company (com_id, name, city) values ('2', 'ORANGE', 'New York');
insert into Company (com_id, name, city) values ('3', 'YELLOW', 'Boston');
insert into Company (com_id, name, city) values ('4', 'GREEN', 'Austin');
SELECT * FROM ORDERS;
Truncate table Orders;
INSERT INTO Orders (order_id, order_date, com_id, sales_id, amount) VALUES (1, '2014-01-01', 3, 4, 10000);
INSERT INTO Orders (order_id, order_date, com_id, sales_id, amount) VALUES (2, '2014-02-01', 4, 5, 5000);
INSERT INTO Orders (order_id, order_date, com_id, sales_id, amount) VALUES (3, '2014-03-01', 1, 1, 50000);
INSERT INTO Orders (order_id, order_date, com_id, sales_id, amount) VALUES (4, '2014-04-01', 1, 4, 25000);