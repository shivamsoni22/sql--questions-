Insert into customer (customer_id ,
first_name,
last_name ,
email,
phone_number,
registration_date ,
city,
state 
) values (1, 'John', 'Doe', 'john.doe@email.com', '1234567890', '2023-01-10', 'New York', 'NY'),
(2, 'Jane', 'Smith', 'jane.smith@email.com', '2345678901', '2023-02-15', 'Los Angeles', 'CA'),
(3, 'Alice', 'Johnson', 'alice.j@email.com', '3456789012', '2023-03-20', 'Chicago', 'IL');

Insert into product (product_id,product_name ,
category ,
price ,
stock_quantity)values(101, 'Laptop', 'Electronics', 800, 50),
(102, 'Headphones', 'Electronics', 150, 200),
(103, 'Coffee Maker', 'Appliances', 100, 100),
(104, 'Office Chair', 'Furniture', 300, 20),
(105, 'Desk Lamp', 'Furniture', 40, 80);


Insert into Sales( 
customer_id ,
product_id ,
quantity_sold, 
sale_date ,
total_amount ) values(1001, 1, 101, 1, '2023-07-01', 800),
(1002, 2, 102, 2, '2023-07-02', 300),
(1003, 3, 103, 1, '2023-07-03', 100),
(1004, 1, 104, 1, '2023-07-04', 300),
(1005, 2, 105, 3, '2023-07-05', 120);

insert into Discounts(discount_id , 
product_id , 
discount_percentage ,
start_date ,
end_date )values(1, 101, 10, '2023-07-01', '2023-07-10'),
(2, 102, 5, '2023-07-01', '2023-07-05'),
(3, 103, 15, '2023-07-03', '2023-07-15');

Insert into Reviews(review_id ,
customer_id , 
product_id ,
rating ,
review_date ,
comments 
)values(5001, 1, 101, 4, '2023-07-10', 'Good performance'),
(5002, 2, 102, 5, '2023-07-11', 'Great sound!'),
(5003, 3, 103, 3, '2023-07-12', 'Average quality'),
(5004, 1, 104, 5, '2023-07-13', 'Very comfortable'),
(5005, 2, 105, 4, '2023-07-14', 'Bright and useful');