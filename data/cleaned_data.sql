USE ecommerce_resume;

DROP TABLE IF EXISTS cleaned_orders;

CREATE TABLE cleaned_orders AS
SELECT *
FROM orders;

SELECT * FROM cleaned_orders;