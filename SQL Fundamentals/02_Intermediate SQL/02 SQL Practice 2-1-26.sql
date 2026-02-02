-- Group by problem solution

SELECT DISTINCT ride_type,
       ROUND(SUM(fare), 2)  AS total_trip_fare,
       ROUND(AVG(fare) , 2) AS avg_trip_fare,
       COUNT(trip_id)       AS trip_count
FROM trips
GROUP BY ride_type;

-- ============================================================
-- SQL Mentorship Challenge 1
-- Focus: SELECT, FROM, LIMIT, DISTINCT, AS,
--        SUM, AVG, MIN, MAX, COUNT, ROUND
--
-- Table: orders
-- Columns:
--   order_id (int)
--   customer_id (int)
--   order_total (numeric)
-- ============================================================


-- ------------------------------------------------------------
-- Level 1 — Foundations (SELECT / FROM / LIMIT)
-- ------------------------------------------------------------

-- 1. Return all columns for the first 10 rows in the orders table.
SELECT *
FROM orders
LIMIT 10;

-- 2. Return only order_id and order_total for the first 5 rows.
SELECT order_id,
       order_total
FROM orders
LIMIT 5;

-- 3. Return all rows from the orders table, limited to 20 records.

SELECT *
FROM orders
LIMIT 20;



-- ------------------------------------------------------------
-- Level 2 — Aggregate Functions
-- ------------------------------------------------------------

-- 4. Find the total revenue across all orders.

SELECT SUM(order_total) as total_revanue
FROM orders;

-- 5. Find the average order total.
SELECT AVG(order_total) AS avg_order_total
FROM orders;

-- 6. Find the smallest and largest order totals.
SELECT MIN(order_total) AS minimum_order_total,
       MAX(order_total) AS maximum_order_total
FROM orders;

-- 7. Count the total number of orders.
SELECT COUNT(order_id) AS total_orders
FROM orders;

-- ------------------------------------------------------------
-- Level 3 — DISTINCT + COUNT
-- ------------------------------------------------------------

-- 8. Count how many unique customers have placed an order.
SELECT COUNT(DISTINCT customer_id) AS unique_customers
FROM orders;

-- 9. Return a list of distinct customer IDs.
SELECT DISTINCT customer_id
FROM orders;

-- 10. Count the number of distinct order totals.
SELECT COUNT(DISTINCT order_totals) AS distinct_order_totals
FROM orders;

-- ------------------------------------------------------------
-- Level 4 — Aliases + ROUND
-- ------------------------------------------------------------

-- 11. Return the average order total, rounded to 2 decimal places,
--     and name the column avg_order_value.
SELECT ROUND(AVG(order_total), 2) AS avg_order_value
FROM orders;

-- 12. Return the total revenue, rounded to 0 decimals,
--     and name the column total_revenue.
SELECT ROUND(SUM(order_total), 0) AS total_revenue
FROM orders;

-- 13. Return the maximum order total, rounded to 1 decimal place,
--     aliased as max_order.
SELECT ROUND(MAX(order_total), 1) AS max_order
FROM orders;

-- ------------------------------------------------------------
-- Level 5 — Combining Aggregates (Single Row Output)
-- ------------------------------------------------------------

-- 14. Return one row that includes:
--     - total revenue
--     - average order total
--     - number of orders
SELECT SUM(order_total) AS total_revenue,
       AVG(order_total) AS avg_order_total,
       COUNT(order_id)  AS number_of_orders
FROM orders;

-- 15. Same as above, but round the average order total to 2 decimals.
SELECT SUM(order_total)           AS total_revenue,
       ROUND(AVG(order_total), 2) AS avg_order_total,
       COUNT(order_id)            AS number_of_orders
FROM orders;

-- ------------------------------------------------------------
-- Level 6 — Precision & Numeric Thinking
-- ------------------------------------------------------------

-- 16. Count the number of orders and multiply the result by 1.
SELECT COUNT(order_id) * 1 AS order_count
FROM orders;

-- 17. Return the average order total and ensure the result
--     is not truncated due to integer division or data types.
SELECT AVG(order_total) * 1.0 AS avg_order_total
FROM orders;

-- 18. Return the average order total rounded to 2 decimals
--     and confirm the query returns exactly one row.
SELECT ROUND(AVG(order_total), 2) AS avg_order_total
FROM orders;


