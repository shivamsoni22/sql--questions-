use question_office;
drop table  if exists customar ;

create table  customar(
customer_id INT,
first_name VARCHAR (50),
last_name VARCHAR (20),
email VARCHAR (20),
phone_number VARCHAR (20),
registration_date DATE,
city VARCHAR (50),
state VARCHAR (20)
);
drop table  if exists Product ;
Create table Product(
product_id INT,
product_name VARCHAR (20),
category VARCHAR (20),
price DECIMAL (20,15),
stock_quantity INT
);
drop table  if exists sales ;
create table Sales(
sale_id INT, 
customer_id INT,
product_id INT,
quantity_sold INT,
sale_date DATE,
total_amount DECIMAL (20,15)
)


