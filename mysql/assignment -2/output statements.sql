

use question_office;



-- --output 1 
-- sale_id	customer_name	product_name	quantity_sold	sale_date	total_amount
-- 1001	John Doe	Laptop	1	2023-07-01	800
-- 1002	Jane Smith	Headphones	2	2023-07-02	300
-- 1004	John Doe	Office Chair	1	2023-07-04	300
-- 1005	Jane Smith	Desk Lamp	3	2023-07-05	120
-- sale_id= customer_id = product_id
-- customer name  -costomers table 
-- producta  name - products table 

-- sale_id - customer_id



-- product_id  = sale_id


Select 
 s.sale_id ,CONCAT(First_Name , ' ' ,  ' ' , Last_name) as customer_name,
 p.product_name, s.product_id ,s.quantity_sold,s.sale_date,s.total_amount
 from (select * from sales
where sale_date >='2023-07-01' and sale_date<= '2023-07-31' ) s
 join product p on s.product_id = p.product_id
 join customers c on s.customer_id  = c.customer_id
 where total_amount>100;
 
 
 
--  output 2
 -- product_id	product_name	total_sales
-- 101	Laptop	800
-- 102	Headphones	300
-- 104	Office Chair	300

Select 
p.product_id,
p.product_name,
s.total_amount as total_sales
from product p
join sales s on p.product_id = s.product_id 
where sale_date >='2023-07-01' and sale_date<= '2023-07-31'  and total_amount >=300 ;



-- output 3
-- category	total_sales_amount	total_quantity_sold
-- Electronics	1100	3
-- Appliances	100	1
-- Furniture	420	4
-- 

select category , sum(total_sales_amount), sum(total_quantity_sold) from
(Select p.category as category ,
s.total_amount as total_sales_amount,
s.quantity_sold as total_quantity_sold from  sales s
join product p on s.product_id = p.product_id) product_sls
group by category;



-- --output 4 
Select CONCAT(First_Name , ' '  , Last_name) as customer_name,
-- discount_id as customer_id,
p.product_name,
d.discount_percentage from  (select * from discounts
where start_date >='2023-07-01' and end_date <= '2023-07-31') d

join product p on d.product_id =p.product_id
join customers c on d.discount_id = c.customer_id;



-- output 5
-- customer_id	customer_name
-- 3	Alice Johnson
Select c.customer_id, c.Last_name as customer_name
from customers c
join reviews r on c.customer_id = r.customer_id
where r.review_id is null ;


-- output 6

-- average_rating
-- 3.5

select  r.rating as average_rating  from reviews r
join product p on p.product_id = r.product_id
where r.rating <=3;