-- Write a SQL statement to generate a report with the customer name, city, order no. order date, 
-- purchase amount for only those customers on the list who must have a grade and 
-- placed one or more orders or which order(s) have been placed by the customer who neither is on the list nor has a grade.

select c.cust_name as customer_name , c.city , o.ord_no as order_number , o.ord_date as order_date , o.purch_amt as purchase_amount  from customer c
left outer join orders o on c.customer_id = o.customer_id 
where c.grade is not null 
union
select c.cust_name as customer_name , c.city , o.ord_no as order_number , o.ord_date as order_date , o.purch_amt as purchase_amount  from customer c
right outer join orders o on c.customer_id = o.customer_id 
where c.grade is not null ;

