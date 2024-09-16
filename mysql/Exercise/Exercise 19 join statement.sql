-- Write a SQL statement to create a Cartesian product between salesperson and customer, i.e. 
-- each salesperson will appear for every customer and vice versa for those salesmen who belong to a city and customers who require a grade.

select * from salesman s
cross join customer c
where c.grade is not null and s.city is not null;