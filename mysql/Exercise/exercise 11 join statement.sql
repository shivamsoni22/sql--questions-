-- SQL statement to generate a report with customer name, city, order number, order date, order amount, salesperson name,
-- and commission to determine if any of the existing customers have not placed orders or 
-- if they have placed orders through their salesman or by themselves.
SELECT 
    c.cust_name AS customer_name,
    c.city,
    o.ord_no AS order_number,
    o.ord_date AS order_date,
    o.purch_amt AS order_amount,
    s.s_name AS salesperson_name,
    s.commission
FROM
   customer c
join orders o on  c.customer_id = o.customer_id
join salesman s on c.salesman_id = o.salesman_id