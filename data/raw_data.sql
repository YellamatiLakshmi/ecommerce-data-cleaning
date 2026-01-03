CREATE DATABASE IF NOT EXISTS ecommerce_resume;
USE ecommerce_resume;

DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    customer_name VARCHAR(50),
    email VARCHAR(100),
    product VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2),
    quantity INT,
    order_date DATE,
    country VARCHAR(30),
    status VARCHAR(20)
);

INSERT INTO orders VALUES
(1001, 201, 'Amit', 'amit@gmail.com', 'Laptop', 'Electronics', 65000, 1, '2023-01-05', 'India', 'Completed'),
(1002, 202, 'Riya', 'riya@gmail.com', 'Phone', 'Electronics', -22000, 1, '2023-01-06', 'india', 'completed'),
(1003, 203, 'John', NULL, 'Tablet', 'Electronics', 28000, 1, '2023-01-07', 'USA', 'Shipped'),
(1004, 201, 'Amit', 'amit@gmail.com', 'Laptop', 'Electronics', 65000, 1, '2023-01-05', 'India', 'Completed'),
(1005, 204, 'Sara', 'sara@', 'Headphones', 'Accessories', 3000, NULL, '2023-02-01', 'UK', 'Pending'),
(1006, 205, 'Meera', 'meera@gmail.com', NULL, 'Accessories', 8000, 1, NULL, 'U.S.A', 'Completed'),
(1007, 206, 'David', 'david@gmail.com', 'Camera', 'Electronics', 45000, 1, '2023-02-10', 'USA', 'shipped'),
(1008, 202, 'Riya', 'riya@gmail.com', 'Phone', 'Electronics', 22000, 1, '2023-01-06', 'India', 'Completed'),
(1009, 207, 'Neha', NULL, 'Watch', 'Accessories', 5000, 2, '2023-03-01', 'India', 'Completed'),
(1010, 208, 'Chris', 'chris@gmail.com', 'Speaker', 'Electronics', 7000, 1, '2023-03-05', 'Canada', 'Pending'),
(1011, 209, 'Lily', 'lily@gmail.com', 'Mouse', 'Accessories', 1200, 3, '2023-03-06', 'Canada', 'completed'),
(1012, 210, 'Raj', NULL, 'Keyboard', 'Accessories', 2500, 1, '2023-03-07', 'India', 'Completed');

SELECT * FROM orders;