USE ecommerce_resume;

-- Fix negative prices
UPDATE orders
SET price = ABS(price)
WHERE price < 0;
