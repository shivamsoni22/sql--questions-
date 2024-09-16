-- From the following tables write a SQL query to find those customers with a grade less than 300.
-- Return cust_name, customer city, grade, Salesman, salesmancity. The result should be ordered by ascending customer_id. 
select c.cust2_name , c.city ,c.grade , s.s_name as salesman , s.city from customer2 c
join orders o on c.salesman_id = o.salesman_id
join salesman s on c.salesman_id = s.salesman_id
where c.grade<=300
order by c.customer2_id asc;