-- From the following tables write a SQL query to find
--  those orders where the order amount exists 
--  between 500 and 2000.
--  Return ord_no, purch_amt, cust_name, city.
select o.ord_no, o.purch_amt, c.cust2_name ,c.city from orders o
join customer2 c on o.customer2_id = c.customer2_id
where o.purch_amt between 500 and 2000 ;