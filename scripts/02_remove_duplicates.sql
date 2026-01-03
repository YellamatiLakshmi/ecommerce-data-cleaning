USE ecommerce_resume;

-- Show duplicates before deletion
SELECT *
FROM orders o1
JOIN orders o2
  ON o1.customer_name = o2.customer_name
 AND o1.product = o2.product
 AND o1.price = o2.price
 AND o1.quantity = o2.quantity
 AND o1.order_date = o2.order_date
 AND o1.status = o2.status
 AND o1.order_id > o2.order_id;

-- Remove duplicates (keep lowest order_id)
DELETE o1
FROM orders o1
JOIN orders o2
  ON o1.customer_name = o2.customer_name
 AND o1.product = o2.product
 AND o1.price = o2.price
 AND o1.quantity = o2.quantity
 AND o1.order_date = o2.order_date
 AND o1.status = o2.status
 AND o1.order_id > o2.order_id;

-- Confirm no duplicates remain
SELECT customer_name, product, price, quantity, order_date, status, COUNT(*) AS count_orders
FROM orders
GROUP BY customer_name, product, price, quantity, order_date, status
HAVING COUNT(*) > 1;
