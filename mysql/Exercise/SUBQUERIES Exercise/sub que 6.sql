--  From the following tables write a SQL query to determine the commission of the salespeople in Paris. Return commission.
--  
select s.commission from salesman s
where s.salesman_id =(
 select c.salesman_id from customer c
 where c.city = 'Paris'
);