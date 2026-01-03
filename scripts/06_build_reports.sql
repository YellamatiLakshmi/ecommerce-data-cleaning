USE ecommerce_resume;

-- Sales by country
SELECT country,
       COUNT(*) AS total_orders,
       SUM(price * quantity) AS total_sales
FROM orders
GROUP BY country;

-- Revenue by category
SELECT category,
       SUM(price * quantity) AS revenue
FROM orders
GROUP BY category;

-- Monthly sales trend
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
       SUM(price * quantity) AS monthly_sales
FROM orders
GROUP BY month
ORDER BY month;
