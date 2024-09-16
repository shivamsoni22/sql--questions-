-- From the following tables write a SQL query to find the salesperson and customer who reside in the same city. Return Salesman,
-- cust_name and city.
use que_join;

SELECT 
     s.s_name AS salesman, c.cust_name, c.city
FROM
    salesman s
        JOIN
    customer c ON c.city = s.city