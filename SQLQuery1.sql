CREATE TABLE customers(
customer_id int PRIMARY KEY,
first_name varchar(100),
last_name varchar(100),
phone int,
email varchar(200),
street varchar(200),
city varchar(100),
state varchar(100),
zip_code int,
);
CREATE TABLE staff(
staff_id int PRIMARY KEY,
first_name varchar(100),
Last_name varchar(100),
email varchar(100),
phone int,
active varchar(100),
store_id int,
manager_id int,
);
CREATE TABLE orders(
order_id int PRIMARY KEY,
customer_id int,
order_status varchar(100),
order_date int,
required_date int,
shipped_date int,
store_id int,
staff_id int,
);
CREATE TABLE stores(
store_id int PRIMARY KEY,
store_name varchar(100),
phone int,
email varchar(100),
street varchar(100),
city varchar(100),
state  varchar(100),
zip_code int,
);
CREATE TABLE order_items(
order_id int PRIMARY KEY,
item_id int,
product_id int,
quantity int,
list_price int,
discount int,
);
CREATE TABLE categories(
category_id int PRIMARY KEY,
category_name varchar(100),
);
CREATE TABLE products(
product_id int PRIMARY KEY,
product_name varchar(100),
brand_id int,
category_id int,
model_year int,
list_price int,
);
CREATE TABLE stocks(
store_id int  PRIMARY KEY,
product_id int,
quantity int,
);
CREATE TABLE brands(
brand_id int PRIMARY KEY,
brand_name varchar(100),
);