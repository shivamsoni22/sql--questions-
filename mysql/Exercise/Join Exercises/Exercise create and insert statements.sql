use que_join;

-- --  Exercise-1 with Solution
-- -- From the following tables write a SQL query to find the salesperson and customer who reside in the same city. Return Salesman,
--  cust_name and city.
drop table  if exists salesman ;
CREATE TABLE salesman (
    salesman_id INT PRIMARY KEY,
    s_name VARCHAR(50),
    city VARCHAR(50),
    commission DECIMAL(4, 2)
);
drop table if exists customer ;
CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    cust_name VARCHAR(50),
    city VARCHAR(50),
    grade INT,
    salesman_id INT
);

INSERT INTO salesman (salesman_id, s_name, city, commission) VALUES (5001, 'James Hoog', 'New York', 0.15);
INSERT INTO salesman (salesman_id, s_name, city, commission) VALUES (5002, 'Nail Knite', 'Paris', 0.13);
INSERT INTO salesman (salesman_id, s_name, city, commission) VALUES (5005, 'Pit Alex', 'London', 0.11);
INSERT INTO salesman (salesman_id, s_name, city, commission) VALUES (5006, 'Mc Lyon', 'Paris', 0.14);
INSERT INTO salesman (salesman_id, s_name, city, commission) VALUES (5007, 'Paul Adam', 'Rome', 0.13);
INSERT INTO salesman (salesman_id, s_name, city, commission) VALUES (5003, 'Lauson Hen', 'San Jose', 0.12);

INSERT INTO customer (customer_id, cust_name, city, grade, salesman_id) VALUES (3002, 'Nick Rimando', 'New York', 100, 5001);
INSERT INTO customer (customer_id, cust_name, city, grade, salesman_id) VALUES (3007, 'Brad Davis', 'New York', 200, 5001);
INSERT INTO customer (customer_id, cust_name, city, grade, salesman_id) VALUES (3005, 'Graham Zusi', 'California', 200, 5002);
INSERT INTO customer (customer_id, cust_name, city, grade, salesman_id) VALUES (3008, 'Julian Green', 'London', 300, 5002);
INSERT INTO customer (customer_id, cust_name, city, grade, salesman_id) VALUES (3004, 'Fabian Johnson', 'Paris', 300, 5006);
INSERT INTO customer (customer_id, cust_name, city, grade, salesman_id) VALUES (3009, 'Geoff Cameron', 'Berlin', 100, 5003);
INSERT INTO customer (customer_id, cust_name, city, grade, salesman_id) VALUES (3003, 'Jozy Altidor', 'Moscow', 200, 5007);
INSERT INTO customer (customer_id, cust_name, city, grade, salesman_id) VALUES (3001, 'Brad Guzan', 'London', NULL, 5005);

