create database salesAnalytics;
use salesAnalytics;

-- create table customer
create table customers(
customer_id int primary key not null,
first_name varchar(100),
last_name varchar(100),
gender enum('M', 'F'),
email varchar(50) UNIQUE,
city varchar(20),
register_date date
);


/*
i decided to drop the age column in the customer's table
since the products in our database are not age specific
and customers may feel reluctact in giving out their age
*/


-- create product category table
create table category(
category_id int primary key not null,
category_name varchar(100)
);

-- create product table
CREATE TABLE products (
    product_id INT PRIMARY KEY NOT NULL,
    product_name VARCHAR(100),
    category_id INT,
    price DECIMAL(10 , 2 ),
    FOREIGN KEY(category_id)
        REFERENCES category(category_id)
);



-- create sales order table 
create table orders(
order_id int PRIMARY key not null,
customer_id int,
product_id int,
quantity int,
order_date date,
FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
FOREIGN KEY(product_id) REFERENCES products(product_id)
);

-- create sales transaction table
create table salesTransaction(
transaction_id int primary key,
total_amount decimal(10, 2),
order_id int,
payment_method varchar(50),
transaction_date date
);

show tables; -- display list of tables in the database
-- insert data into the customer's table
insert into customers(customer_id, first_name, last_name, gender, email, city, register_date) values
(101, 'Jerry', 'Doe', 'M', 'jerry@gmail.com', 'Abuja','2001-11-21'),
(102, 'Marcus', 'Yakunat', 'M', 'marcus@gmail.com','Port Harcourt', '2022-10-10'),
(103, 'Elias', 'Chukwu', 'M', 'elias@gmail.com', 'Port Harcourt', '2023-04-30'),
(104, 'Bolanle', 'Olusola', 'F', 'bola@olusola.com', 'Owerri', '2023-04-21'),
(105, 'Julius', 'Augustine', 'M', 'julius@gmail.com', 'Enugu','2002-09-23'),
(106, 'Benjamin', 'Dricus', 'M', 'ben@dricus.com', 'Abuja','2003-05-11'),
(107, 'Felicia', 'Amaka', 'F', 'felicia@gmail.com', 'Lagos','2020-05-21'),
(108, 'Donatus', 'Mika', 'M', 'donatus@gmail.com', 'Enugu','2020-06-21'),
(109, 'Faustina', 'Simon', 'F', 'simonFaustina@gmail.com', 'Lagos','2022-11-23'),
(110, 'Eberechukwu', 'Onyeka', 'F', 'ebereonyeka@gmail.com','Owerri','2022-11-23'),
(111, 'Amarachuwku', 'Johnson', 'F', 'amarajohnson@gmail.com', 'Aba','2020-06-21'),
(112, 'Halima', 'Audu', 'F', 'halima@gmail.com', 'Abuja','2020-06-21'),
(113, 'Yusuf', 'Abdulahi', 'M', 'yusuf@gmail.com', 'Abuja', '2021-07-12'),
(114, 'Emmanuella', 'Doe', 'F', 'emmauella@gmail.com','Enugu' ,'2021-10-01'),
(115, 'Filomina', 'Ukachi', 'F', 'feloukachi@gmail.com', 'Port Harcourt' ,'2022-11-21'),
(116, 'Fatima', 'Haruna', 'F', 'fatima@haruna.com','Lagos', '2022-11-13'),
(117, ' Biodun', 'Gbenaga', 'F', 'biodun@gmail.com','Enugu', '2022-11-13'),
(118, 'Miriam', 'Jibrin', 'F', 'miriam@gmail.com', 'Aba', '2021-10-01'),
(119, 'Danladi', 'Usman', 'M', 'danladi@usman.com','Aba', '2001-10-11'),
(120, 'Desmond', 'Usman', 'M', 'desmond@gmail.com', 'Enugu', '2022-11-23'),
(121, 'Matter', 'Dylan', 'F', 'matter@dylan.com', 'Owerri', '2023-01-13'),
(122, 'Ola', 'Olabisi', 'F', 'olabisi@gmail.com', 'Lagos', '2023-08-19'),
(123, 'Mercy', 'Johnson', 'F', 'mercy@johson.com', 'Abuja', '2023-01-02'),
(124, 'Ekene', 'Whrite', 'M', 'ekene@gmail.com', 'Enugu', '2021-07-03'),
(125, 'Emenike', 'Izuogu', 'M', 'emenike@gmail.com', 'Port Harcourt', '2020-11-18'),
(126, 'Blessing', 'Lekan', 'F', 'blessing@gmail.com', 'Abuja', '2023-08-21'),
(127, 'Telma', 'Zacharia', 'F', 'telma@zacharia.com', 'Kano','2023-12-19'),
(128, 'Winston', 'Mefor', 'M', 'mefor@winston.com', 'Owerri', '2023-05-15'),
(129, 'David', 'Armstrong', 'M', 'armstrong@gmail.com', 'Abuja', '2022-01-01'),
(130, 'Eucharia', 'Okafor', 'F', 'okafor@eucharia.com', 'Aba', '2023-03-23');





-- populate the category table
insert into category(category_id, category_name) values
(1001, 'Mobile Phone Accessories'), (1002, 'Laptop Accessories'), (1003, 'Electronics'),
(1004, 'Jewelries'), (1005, 'Appliances');




-- populate the product table
insert into products(product_id, product_name, category_id, price) values
(10001, 'Asus 230 laptop computer', 1003, 21000.00), (10002, 'HP360 laptop', 1003, 25000.00),
(10003, 'Heier Thermacool Deep Freezer', 1005, 76000.00),(10004, 'Iphone16 Pro Max', 1003, 500000.00),
(10005, 'Samsung Galaxy s24 Ultra', 1003, 850000.00),(10006, 'Oppo360', 1003, 450000.00),
(10007, 'Samsung Fast Charger', 1001, 10000.00),(10008, 'Samsung ear bud', 1001, 25000.00),
(10009, 'JBL Headphone', 1001, 35000.00),(10010, 'Laptop wireless Mouse', 1002, 25000.00),
(10011, 'LG Double Door Fridge', 1005, 800000.00), (10012, 'Samsung Standing Fan', 1005, 35000.00),
(10013, 'HP Table Tower Top computer', 1003, 120000.00),(10014, 'Google Pixel 360', 1003, 320000.00),
(10015, 'All-in-One Apple Desktop Computer', 1003, 150000.00), (10016, 'Samsung Galaxy Tablet', 1003, 120000.00),
(10017, 'Ipad12 Gen-Z', 1003, 210000.00), (10018, 'Sony Bluetooth Speaker', 1003, 45000.00),
(10019, 'All-in-One Asus Desktop Computer', 1003, 950000.00), (10020, 'Samsung Electric Microwave', 1005, 750000.00),
(10021, 'Universal Mobile phone Charger', 1001, 12000.00),(10022, '21 inch Flat Screen Samsung TV', 1005, 650000.00),
(10023, 'Asus Laptop Charger', 1002, 1800.00), (10024, 'Scandisk 32gb Storage', 1002, 1000.00),
(10025, 'Panasonic 13 inch Flat screen TV', 1005, 870000.00),(10026, '21 Inch Sony Flat Screen TV', 1005, 980000.00),
(10027, 'Samsung Smart Watch', 1003, 5500.00), (10028, 'Apple Smart Watch', 1005, 6000.00),
(10029, 'Gold Necklace', 1004, 28000.00), (10030, 'Diamond Plated Bracelet', 1004, 35000.00),
(10031, 'Gold Ring', 1004, 35000.00),(10032, 'Gold top Silver Necklace', 1004, 32000.00);


-- data records into the order table
insert into orders(order_id, customer_id, product_id, quantity, order_date) values
(101, 101, 10001, 2, '2023-11-21'), (102, 103, 10004, 3, '2023-11-02'),
(103, 103, 10005, 2, '2021-03-11'),(104, 104, 10006, 1, '2022-01-19'),
(105, 107, 10007, 4, '2023-01-13'),(106, 108, 10008, 3, '2023-10-19'),
(107, 105, 10009, 1, '2024-11-13'), (108, 110, 10010, 2, '2023-04-10'),
(109, 112, 10011, 5, '2023-11-13'),(110, 113, 10012, 4, '2024-08-12'),
(111, 114, 10013, 2, '2024-09-12'),(112, 115, 10014, 7, '2025-01-12'),
(113, 116, 10015, 4, '2024-08-21'), (114, 110, 10016, 3, '2024-09-19'),
(115, 117, 10017, 5,'2024-11-12'),(116, 117, 10018, 2, '2024-08-11'),
(117, 118, 10019, 2, '2024-08-17'),(118, 119, 10020, 10, '2024-09-17'),
(119, 120, 10021, 3, '2024-11-29'),(120, 121, 10022, 5, '2024-09-18'),
(121, 122, 10022, 10, '2024-01-29'),(122, 123, 10023, 4, '2024-08-19'),
(123, 123, 10023, 2, '2024-09-22'),(124, 124, 10024, 3, '2023-07-29'),
(125, 124, 10024, 2, '2024-11-14'),(126, 125, 10025, 5, '2024-11-18'),
(127, 126, 10026, 7, '2025-01-17'),(128, 125, 10025, 4, '2024-12-16'),
(129, 126, 10027, 10, '2025-02-22'),(130, 127, 10028, 5, '2024-06-11'),
(131, 128, 10028, 4, '2025-03-12'),(132, 129, 10029, 8, '2025-03-09'),
(133, 130, 10030, 5, '2025-04-11'),(134, 130, 10030, 7, '2025-02-11');

show errors;


select p.product_name, c.category_name, p.price
from products p join category c
on p.category_id = c.category_id;

select * from orders;

select c.first_name, c.last_name, c.city,  o.quantity, p.price,
p.product_name, cat.category_name
from orders o 
join products p on p.product_id = o.product_id
join customers c on c.customer_id = o.customer_id
join category cat on 
cat.category_id = p.category_id;


-- insert data into the salesTransaction table
insert into salesTransaction
(transaction_id, total_amount, order_id, payment_method, transaction_date) values
(100, 42000.00, 101, 'Debit Card','2023-11-21'), (101, 102, 1500000.00,'Debit Card',  '2023-11-02'),
(102, 1700000.00, 103, 'Bank Transfer', '2021-03-11'),(103, 450000.00, 104, 'Debit Card', '2022-01-19'),
(104, 40000.00, 105, 'Cash Payment', '2023-01-13'),(105, 75000.00, 106, 'Bank Transfer', '2023-10-19'),
(106, 35000.00, 107, 'Debit card', '2024-11-13'), (107, 50000.00, 108, 'Cash Payment', '2023-04-01'),
(108, 4000000.00, 109, 'Debit Card', '2023-11-13'),(109, 140000.00, 110, 'Debit Card', '2024-08-12'),
(110, 240000.00, 111, 'Debit card', '2024-09-12'),(111, 2240000.00, 112, 'Bank Transsfer', '2025-01-12'),
(112, 600000.00, 113, 'Debit Card', '2024-08-21'),(113, 360000.00, 114, 'Bank Transfer', '2024-09-19'),
(114, 10500000.00, 115, 'Debit Card', '2024-11-12'),(115, 90000.00, 116, 'Cash Payment', '2024-08-11'),
(116, 1900000.00, 117, 'Debit Card', '2024-08-17'), (117, 7500000.00, 118, 'Bank Transfer', '2024-09-17'),
(118, 7500000.00, 118, 'Bank Transfer', '2024-09-17'),(119, 36000.00, 119, 'Cash Payment', '2024-11-29' ),
(120, 3250000.00, 120, 'Debit Card', '2023-09-18'),(121, 6500000.00, 121, 'Bank Transfer', '2024-06-11'),
(122, 7200.00, 122, 'Cash Payment', '2024-08-19'),(123, 3600.00, 123, 'Cash Payment', '2024-09-22'),
(124, 3000.00,124, 'Cash Payment', '2023-07-29'),(125, 2000.00, 125, 'Cash Payment', '2024-11-14'),
(126, 4350000.00, 126, 'Bank Transfer', '2024-11-18'),(127, 68600000.00,127 ,'Debit Card', '2025-01-17'),
(128, 3480000.00, 128, 'Debit Card', '2024-12-16'),(129, 55000.00, 129, 'Cash Payment', '2025-02-22'),
(130, 30000.00,130, 'Cash Payment','2024-06-11'),(131, 30000.00, 131, 'Cash Payment', '2024-06-11'),
(132, 224000.00, 132, 'Debit Card', '2025-03-09'), (133, 175000.00, 133, 'Bank Transsfer', '2025-04-11'),
(134, 245000.00, 134, 'Bank Transfer', '2025-02-11');


/*
Get the record of names of customers, product they bought
and their total cost include  the date they make the order
*/
select o.order_id, c.first_name, c.last_name, p.product_name, 
sum(o.quantity * p.price) as total_cost, o.order_date
from orders o join customers c
on o.customer_id = c.customer_id
join products p
on o.product_id = p.product_id
group by c.first_name, c.last_name, p.product_name, o.order_id, o.order_date
order by c.first_name asc;


/*
get all the customers who made payment by bank transfer
get also the products they bought
*/
select c.first_name, c.last_name,
p.product_name from salesTransaction st
join orders o 
on st.order_id = o.order_id
join customers c on c.customer_id = o.customer_id
join products p on p.product_id = o.product_id
where payment_method = 'Bank Transfer';

/*
get me all the customers from Abuja
get the products they bought and number of orders they place
*/
SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    p.product_name,
    p.price,
    SUM(o.quantity) AS total_order,
    SUM(p.price * o.quantity) AS total_cost
FROM
    orders o
        JOIN
    products p ON o.product_id = p.product_id
        JOIN
    customers c ON o.customer_id = c.customer_id
WHERE
    c.city = 'Abuja'
GROUP BY c.first_name , c.last_name , p.product_name , p.price
ORDER BY total_order;

/*
queries used for customers spending behaviour per city
and product performance
*/

-- Get Total Sales Per Product
-- what insight did you gather from the data
SELECT 
    p.product_name,
    SUM(o.quantity) AS total_quantity_sold,
    SUM(st.total_amount) AS total_sales
FROM
    orders o
        JOIN
    products p ON o.product_id = p.product_id
        JOIN
    salesTransaction st ON st.order_id = o.order_id
GROUP BY p.product_name;

-- Sales Trend Over Time
-- What insight did you gather from the data
SELECT 
    monthname(transaction_date) as Transaction_month,
    SUM(total_amount) AS daily_sales
FROM
    salesTransaction
GROUP BY transaction_date
ORDER BY transaction_date;

-- customer spending behaviour
-- what insight did you gather from the data?
SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    c.city,
    SUM(st.total_amount) AS total_spent
FROM
    customers c
        JOIN
    orders o ON c.customer_id = o.customer_id
        JOIN
    salesTransaction st ON st.order_id = o.order_id
GROUP BY c.first_name , c.last_name , c.city
ORDER BY total_spent DESC;

/*
Revenue Distribution by city
What insight did you gather from the data?
*/
SELECT 
    c.city, SUM(st.total_amount) AS total_revenue
FROM
    customers c
        JOIN
    orders o ON c.customer_id = o.customer_id
        JOIN
    salesTransaction st ON st.order_id = o.order_id
GROUP BY c.city
ORDER BY total_revenue;

-- tracking order volume
-- what insight did you gather from the data?
SELECT 
    order_date, COUNT(*) AS total_order
FROM
    orders
GROUP BY order_date
ORDER BY total_order;

-- show payment method distribution
-- what insight did you gather from the data?
SELECT 
    payment_method, COUNT(*) AS transaction_count
FROM
    salesTransaction
GROUP BY payment_method
ORDER BY payment_method DESC;

-- top 5 selling product by revenue
-- what insight can you derive from it
select p.product_name, o.quantity
from orders o 
join products p
on p.product_id = o.product_id
order by p.product_name
limit 5;