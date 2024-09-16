-- From the following tables, write a SQL query to find all the orders generated in New York city.
-- Return ord_no, purch_amt, ord_date, customer_id and salesman_id.

select * from orders o 
where o.salesman_id =(
 select s.salesman_id from salesman s
  where s.city = 'New york'
);