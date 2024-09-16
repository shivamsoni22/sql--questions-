--  Write a SQL statement to create a Cartesian product between salesperson and customer, i.e.
--  each salesperson will appear for all customers and vice versa for that salesperson who belongs to that city.


select * from salesman s
cross join customer c 
where s.city = c.city







-- Cartesian product

-- Cartesian product ka matlab hota hai ki salesperson table ke har row ko customer table ke har row ke saath combine karna.
-- Iska result ye hota hai ki har salesperson ke saath har customer ka ek combination milta hai