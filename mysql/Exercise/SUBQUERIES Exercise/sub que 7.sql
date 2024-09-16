--  Write a query to display all the customers whose ID is 2001 below the salesperson ID of Mc Lyon. 
select * from customer c
where c.salesman_id =( 
select s.salesman_id from salesman s 
where 
);