-- Write a SQL statement to join the tables salesman, customer and orders so that the same column of each table appears once
-- and only the relational rows are returned
select * from orders o 
NATURAL JOIN customer2 c
NATURAL JOIN salesman s

-- NATURAL JOIN:-
-- A NATURAL JOIN is a JOIN operation that creates an implicit join clause for you based on the common columns in the two tables being joined. 
-- Common columns are columns that have the same name in both tables. 
-- A NATURAL JOIN can be an INNER join, a LEFT OUTER join, or a RIGHT OUTER join.

