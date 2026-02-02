--Problem 1
SELECT COUNT(order_id)       AS order_count,
       SUM(amount)           AS total_revenue,
       ROUND(AVG(amount), 2) AS avg_orger_value
FROM orders;

--Problem 2
SELECT COUNT(DISTINCT order_id) AS unique_customers,
       MIN(amount)              AS min_order_amount,
       MAX(amount)              AS max_order_amount,
FROM orders;

--Problem 3
 SELECT SUM(amount)               AS total_revenue,
        ROUND(AVG(amount), 1)     AS avg_order_amount, --avg order amount to one decimal
        MAX(amount) - MIN(amount) AS order_range,      --difference between the max and min order amounts
FROM orders;

--Problem 4
SELECT COUNT(order_id)                 AS total_orders,
       COUNT(DISTINCT customer_id)     AS unique_customers,
       total_orders / unique_customers AS avg_order_per_customer
FROM orders;

--Problem 4 correct implementation with better formatting suited for D.E environments
SELECT COUNT(order_id) AS total_orders,
       COUNT(DISTINCT customer_id) AS unique_customers,
       ROUND(
         COUNT(order_id) * 1.0 / COUNT(DISTINCT customer_id),
         2
       ) AS avg_order_per_customer
FROM orders;
