--  From the following tables write a SQL query to find the details of an order.
-- Return ord_no, ord_date, purch_amt, Customer Name, grade, Salesman, commission.

SELECT 
    o.ord_no,
    o.ord_date,
    o.purch_amt,
    c.cust2_name AS Customer_Name,
    c.grade,
    s.s_name AS salesman,
    s.commission
FROM
    orders o
        JOIN
    salesman s ON o.salesman_id = s.salesman_id
        JOIN
    customer2 c ON o.customer2_id = c.customer2_id;