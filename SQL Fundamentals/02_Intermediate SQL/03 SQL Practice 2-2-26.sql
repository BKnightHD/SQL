--Problem 1
SELECT region             AS distinct_region,
    ROUND(SUM(amount), 2) AS total_amount
FROM sales
GROUP BY region,
ORDER BY total_amount DESC;

--Problem 2
SELECT status          AS distinct_status,
       COUNT(order_id) AS number_of_orders
FROM orders
GROUP BY distinct_status
ORDER BY number_of_orders DESC;

--Problem 3
SELECT category,
       ROUND(AVG(price), 2) AS avg_price
FROM products
GROUP BY category
ORDER BY avg_price DESC;