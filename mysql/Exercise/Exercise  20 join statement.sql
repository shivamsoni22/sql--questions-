-- Write a SQL statement to make a Cartesian product between salesman and customer i.e.
-- each salesman will appear for all customers and vice versa for those salesmen who must belong
-- to a city which is not the same as his customer and the customers should have their own grade.


select * from salesman s
cross join customer c
where c.grade is not null and s.city is not null and s.city <> c.city;
