 CREATE DATABASE sales_db;
USE sales_db;
 CREATE TABLE sales_data (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    sale_date DATE,
    customer_name VARCHAR(100),
    product_name VARCHAR(100),
    category VARCHAR(50),
    quantity_sold INT,
    unit_price DECIMAL(10,2),
    total_amount DECIMAL(10,2)
);
 INSERT INTO sales_data (sale_date, customer_name, product_name, category, quantity_sold, unit_price, total_amount)
VALUES 
('2025-01-10', 'Swati', 'Notebook', 'Stationery', 5, 50.00, 250.00),
('2025-01-11', 'Ravi', 'Pen', 'Stationery', 10, 10.00, 100.00),
('2025-01-12', 'Kiran', 'Mouse', 'Electronics', 2, 400.00, 800.00),
('2025-01-12', 'Aman', 'Keyboard', 'Electronics', 1, 700.00, 700.00),
('2025-01-13', 'Priya', 'Bag', 'Accessories', 1, 1500.00, 1500.00);
SELECT * FROM sales_data;
 SELECT SUM(total_amount) AS total_revenue FROM sales_data;
 SELECT category, SUM(quantity_sold) AS total_quantity
FROM sales_data
GROUP BY category;
 SELECT * 
FROM sales_data
ORDER BY total_amount DESC
LIMIT 1;
 SELECT sale_date, SUM(total_amount) AS daily_revenue
FROM sales_data
GROUP BY sale_date
ORDER BY sale_date;
 SELECT customer_name, SUM(total_amount) AS customer_revenue
FROM sales_data
GROUP BY customer_name
ORDER BY customer_revenue DESC;
 SELECT * 
FROM sales_data
WHERE category = 'Electronics';
SELECT category, SUM(quantity_sold) FROM sales_data GROUP BY category;

 SELECT customer_name, SUM(total_amount) AS revenue 
FROM sales_data 
GROUP BY customer_name 
ORDER BY revenue DESC;
 SELECT sale_date, SUM(total_amount) 
FROM sales_data 
GROUP BY sale_date 
ORDER BY sale_date;
SELECT product_name, SUM(quantity_sold) 
FROM sales_data 
GROUP BY product_name 
ORDER BY SUM(quantity_sold) DESC 
LIMIT 1;