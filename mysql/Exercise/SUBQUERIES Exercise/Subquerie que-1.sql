-- From the following tables, write a  SQL query to find all the orders issued by the salesman 'Paul Adam'.
-- Return ord_no, purch_amt, ord_date, customer_id and salesman_id. 


select * from orders o
where o.salesman_id  = (
select s.salesman_id from salesman s
where s.s_name = 'Paul Adam'
);