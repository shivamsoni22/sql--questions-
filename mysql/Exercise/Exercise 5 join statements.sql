-- From the following tables write a SQL query to locate those salespeople who do not live in the same city
-- where their customers live and have received a commission of more than 12% from the company.
-- Return Customer Name, customer city, Salesman, salesman city, commission.

select  c.cust_name , c.city, s_name as salesman , s.commission from customer c 
join salesman s on c.salesman_id = s.salesman_id
where s.commission>0.12 and c.city<>s.city;