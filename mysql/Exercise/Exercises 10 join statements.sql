--  Write a SQL statement to make a report with customer name, city, order number, order date, and order amount in ascending order
-- according to the order date to determine whether any of the existing customers have placed an order or not.
SELECT 
    c.cust_name as customer_name,
    c.city,
    o.ord_no AS order_number,
    o.ord_date AS orders_date,
    s.s_name AS salesman,
    s.city,
    o.purch_amt AS order_amount
FROM
    customer c
        JOIN
    orders o ON c.salesman_id = o.salesman_id
        JOIN
    salesman s ON c.salesman_id = s.salesman_id
ORDER BY order_amount ASC;
