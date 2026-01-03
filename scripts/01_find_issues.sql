USE ecommerce_resume;

-- DUPLICATE ORDERS
SELECT customer_name, product, price, quantity, order_date, status, COUNT(*) AS count_orders
FROM orders
GROUP BY customer_name, product, price, quantity, order_date, status
HAVING COUNT(*) > 1;

-- NEGATIVE PRICES
SELECT * FROM orders WHERE price < 0;

-- MISSING VALUES
SELECT *
FROM orders
WHERE email IS NULL
   OR product IS NULL
   OR category IS NULL
   OR price IS NULL
   OR quantity IS NULL
   OR order_date IS NULL
   OR country IS NULL
   OR status IS NULL;

-- INVALID EMAILS
SELECT *
FROM orders
WHERE email NOT LIKE '%@%.%';
