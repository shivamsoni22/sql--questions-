-- From the following tables write a SQL query to list all salespersons along with customer name, city, 
-- grade, order number, date, and amount. Condition for selecting list of salesmen : 1. Salesmen who works for one or more customer or, 2.
--  Salesmen who not yet join under any customer, 
-- Condition for selecting list of customer : 3. placed one or more orders, or 4. no order placed to their salesman.
select c.cust_name as customer_name , c.city , c.grade , o.ord_no as order_number , o.ord_date as order_number , o.purch_amt as amount from
customer c 
left outer join salesman s on c.salesman_id = s.salesman_id
left outer join orders o on c.customer_id = o.customer_id
order by c.grade