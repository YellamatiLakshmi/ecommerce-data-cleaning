USE ecommerce_resume;

-- Fill missing product names
UPDATE orders SET product = 'Unknown' WHERE product IS NULL;

-- Fill missing quantity
UPDATE orders SET quantity = 1 WHERE quantity IS NULL;

-- Fill missing dates
UPDATE orders SET order_date = '2023-01-01' WHERE order_date IS NULL;

-- Fill missing emails
UPDATE orders SET email = 'not_provided@example.com' WHERE email IS NULL;
