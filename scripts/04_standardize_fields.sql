USE ecommerce_resume;

-- Standardize country values
UPDATE orders SET country = 'India' WHERE country = 'india';
UPDATE orders SET country = 'USA' WHERE country = 'U.S.A';

-- Standardize status values
UPDATE orders SET status = 'Completed' WHERE status = 'completed';
UPDATE orders SET status = 'Shipped' WHERE status = 'shipped';
