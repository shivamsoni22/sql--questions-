-- Write a SQL query to combine each row of the salesman table with each row of the customer table.

select * from salesman s 
cross join customer c


-- cross join 

-- In SQL, CROSS JOINs are used to combine each row of one table with each row of another table,
-- and return the Cartesian product of the sets of rows from the tables that are joined.







-- how to use  cross join 

-- The CROSS JOIN keyword returns all records from both tables (table1 and table2).
-- Note: CROSS JOIN can potentially return very large result-sets!

-- SELECT column_name(s)
-- FROM table1
-- CROSS JOIN table2;
