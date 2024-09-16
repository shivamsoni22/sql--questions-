-- For those customers from the existing list who put one or more orders,
-- or which orders have been placed by the customer who is not on the list,
-- create a report containing the customer name, 
-- city, order number, order date, and purchase amount


select c.cust_name as customer_name , c.city , o.ord_no as order_number , o.ord_date as order_date ,o.purch_amt as purchase_amount from customer c
left outer join orders o on c.customer_id = o.customer_id