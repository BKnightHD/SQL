-- ============================================================
-- E-COMMERCE SAMPLE DATASET FOR MySQL
-- Covers: customers, categories, products, orders, order_items
-- Good for: SELECT, WHERE, ORDER BY, JOINs, GROUP BY, subqueries
-- ============================================================

-- Create and use a fresh schema
CREATE DATABASE IF NOT EXISTS ecommerce_practice;
USE ecommerce_practice;

-- ============================================================
-- TABLE DEFINITIONS
-- ============================================================

CREATE TABLE customers (
    customer_id   INT AUTO_INCREMENT PRIMARY KEY,
    first_name    VARCHAR(50),
    last_name     VARCHAR(50),
    email         VARCHAR(100) UNIQUE,
    city          VARCHAR(50),
    state         VARCHAR(2),
    signup_date   DATE,
    is_active     BOOLEAN DEFAULT TRUE
);

CREATE TABLE categories (
    category_id   INT AUTO_INCREMENT PRIMARY KEY,
    name          VARCHAR(50),
    description   VARCHAR(200)
);

CREATE TABLE products (
    product_id    INT AUTO_INCREMENT PRIMARY KEY,
    category_id   INT,
    name          VARCHAR(100),
    price         DECIMAL(10,2),
    stock_qty     INT,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

CREATE TABLE orders (
    order_id      INT AUTO_INCREMENT PRIMARY KEY,
    customer_id   INT,
    order_date    DATE,
    status        ENUM('pending','shipped','delivered','cancelled'),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    item_id       INT AUTO_INCREMENT PRIMARY KEY,
    order_id      INT,
    product_id    INT,
    quantity      INT,
    unit_price    DECIMAL(10,2),
    FOREIGN KEY (order_id)   REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- ============================================================
-- SEED DATA: CUSTOMERS (20 rows)
-- ============================================================

INSERT INTO customers (first_name, last_name, email, city, state, signup_date, is_active) VALUES
('Alice',   'Johnson',  'alice.johnson@email.com',  'Denver',       'CO', '2022-01-15', TRUE),
('Bob',     'Smith',    'bob.smith@email.com',      'Austin',       'TX', '2022-03-22', TRUE),
('Carol',   'Williams', 'carol.w@email.com',        'Phoenix',      'AZ', '2022-05-10', TRUE),
('David',   'Brown',    'david.b@email.com',        'Seattle',      'WA', '2022-06-01', FALSE),
('Eva',     'Davis',    'eva.davis@email.com',      'Chicago',      'IL', '2022-07-19', TRUE),
('Frank',   'Miller',   'frank.m@email.com',        'Denver',       'CO', '2022-08-05', TRUE),
('Grace',   'Wilson',   'grace.w@email.com',        'Miami',        'FL', '2022-09-14', TRUE),
('Henry',   'Moore',    'henry.moore@email.com',    'Austin',       'TX', '2022-10-30', FALSE),
('Iris',    'Taylor',   'iris.t@email.com',         'Portland',     'OR', '2023-01-08', TRUE),
('Jake',    'Anderson', 'jake.a@email.com',         'Seattle',      'WA', '2023-02-17', TRUE),
('Karen',   'Thomas',   'karen.t@email.com',        'Denver',       'CO', '2023-03-25', TRUE),
('Leo',     'Jackson',  'leo.j@email.com',          'Chicago',      'IL', '2023-04-12', TRUE),
('Mia',     'White',    'mia.white@email.com',      'Phoenix',      'AZ', '2023-05-20', TRUE),
('Nathan',  'Harris',   'nathan.h@email.com',       'Miami',        'FL', '2023-06-03', FALSE),
('Olivia',  'Martin',   'olivia.m@email.com',       'Austin',       'TX', '2023-07-11', TRUE),
('Paul',    'Garcia',   'paul.g@email.com',         'Portland',     'OR', '2023-08-22', TRUE),
('Quinn',   'Martinez', 'quinn.m@email.com',        'Seattle',      'WA', '2023-09-09', TRUE),
('Rachel',  'Robinson', 'rachel.r@email.com',       'Denver',       'CO', '2023-10-01', TRUE),
('Sam',     'Clark',    'sam.clark@email.com',      'Chicago',      'IL', '2023-11-15', TRUE),
('Tina',    'Lewis',    'tina.l@email.com',         'Miami',        'FL', '2024-01-07', TRUE);

-- ============================================================
-- SEED DATA: CATEGORIES (5 rows)
-- ============================================================

INSERT INTO categories (name, description) VALUES
('Electronics',   'Gadgets, devices, and accessories'),
('Clothing',      'Apparel for men, women, and kids'),
('Home & Garden', 'Furniture, decor, and outdoor items'),
('Sports',        'Equipment and gear for sports and fitness'),
('Books',         'Fiction, non-fiction, and educational titles');

-- ============================================================
-- SEED DATA: PRODUCTS (20 rows)
-- ============================================================

INSERT INTO products (category_id, name, price, stock_qty) VALUES
(1, 'Wireless Headphones',      89.99,  120),
(1, 'Bluetooth Speaker',        49.99,  200),
(1, 'USB-C Hub',                34.99,  300),
(1, 'Mechanical Keyboard',     119.99,   75),
(1, 'Webcam 1080p',             64.99,   90),
(2, 'Running Shoes',            79.99,  150),
(2, 'Denim Jacket',             59.99,   80),
(2, 'Yoga Pants',               39.99,  200),
(2, 'Baseball Cap',             19.99,  500),
(2, 'Winter Coat',             129.99,   60),
(3, 'Desk Lamp',                29.99,  175),
(3, 'Throw Blanket',            34.99,  220),
(3, 'Scented Candle Set',       24.99,  400),
(3, 'Wall Art Print',           44.99,  100),
(3, 'Indoor Plant Pot',         18.99,  300),
(4, 'Yoga Mat',                 45.99,  180),
(4, 'Resistance Bands Set',     22.99,  250),
(4, 'Water Bottle 32oz',        15.99,  600),
(4, 'Jump Rope',                12.99,  400),
(5, 'Learn SQL in 30 Days',     29.99,  350);

-- ============================================================
-- SEED DATA: ORDERS (30 rows)
-- ============================================================

INSERT INTO orders (customer_id, order_date, status) VALUES
(1,  '2023-01-10', 'delivered'),
(2,  '2023-01-15', 'delivered'),
(3,  '2023-02-03', 'delivered'),
(5,  '2023-02-20', 'delivered'),
(6,  '2023-03-05', 'delivered'),
(7,  '2023-03-18', 'cancelled'),
(1,  '2023-04-02', 'delivered'),
(9,  '2023-04-25', 'delivered'),
(10, '2023-05-10', 'delivered'),
(11, '2023-05-22', 'shipped'),
(12, '2023-06-08', 'delivered'),
(13, '2023-06-30', 'delivered'),
(15, '2023-07-14', 'delivered'),
(2,  '2023-07-28', 'cancelled'),
(16, '2023-08-05', 'delivered'),
(17, '2023-08-19', 'delivered'),
(18, '2023-09-01', 'shipped'),
(19, '2023-09-15', 'delivered'),
(20, '2023-10-03', 'delivered'),
(1,  '2023-10-20', 'delivered'),
(5,  '2023-11-02', 'delivered'),
(6,  '2023-11-18', 'shipped'),
(9,  '2023-12-01', 'delivered'),
(10, '2023-12-15', 'delivered'),
(12, '2024-01-08', 'delivered'),
(15, '2024-01-22', 'pending'),
(18, '2024-02-05', 'delivered'),
(19, '2024-02-19', 'shipped'),
(20, '2024-03-03', 'delivered'),
(2,  '2024-03-17', 'pending');

-- ============================================================
-- SEED DATA: ORDER ITEMS (60 rows)
-- ============================================================

INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1,  1,  1, 89.99),
(1,  18, 2, 15.99),
(2,  6,  1, 79.99),
(2,  9,  2, 19.99),
(3,  10, 1,129.99),
(3,  12, 1, 34.99),
(4,  16, 1, 45.99),
(4,  17, 2, 22.99),
(4,  19, 1, 12.99),
(5,  2,  1, 49.99),
(5,  3,  1, 34.99),
(6,  7,  1, 59.99),
(6,  8,  2, 39.99),
(7,  4,  1,119.99),
(7,  5,  1, 64.99),
(8,  20, 2, 29.99),
(8,  11, 1, 29.99),
(9,  1,  1, 89.99),
(9,  2,  1, 49.99),
(10, 13, 3, 24.99),
(10, 15, 2, 18.99),
(11, 6,  1, 79.99),
(11, 18, 1, 15.99),
(12, 16, 1, 45.99),
(12, 19, 2, 12.99),
(13, 4,  1,119.99),
(13, 3,  2, 34.99),
(14, 10, 1,129.99),
(14, 7,  1, 59.99),
(15, 8,  1, 39.99),
(15, 9,  3, 19.99),
(16, 20, 1, 29.99),
(16, 5,  1, 64.99),
(17, 11, 2, 29.99),
(17, 14, 1, 44.99),
(18, 1,  1, 89.99),
(18, 17, 1, 22.99),
(19, 2,  2, 49.99),
(19, 12, 1, 34.99),
(20, 16, 1, 45.99),
(20, 18, 2, 15.99),
(21, 6,  2, 79.99),
(21, 9,  1, 19.99),
(22, 3,  1, 34.99),
(22, 13, 2, 24.99),
(23, 4,  1,119.99),
(23, 20, 1, 29.99),
(24, 8,  1, 39.99),
(24, 15, 3, 18.99),
(25, 1,  1, 89.99),
(25, 5,  1, 64.99),
(26, 7,  1, 59.99),
(26, 11, 2, 29.99),
(27, 2,  1, 49.99),
(27, 19, 1, 12.99),
(28, 16, 2, 45.99),
(28, 18, 1, 15.99),
(29, 14, 1, 44.99),
(29, 12, 2, 34.99),
(30, 20, 3, 29.99);

-- ============================================================
-- DONE! You now have:
--   20 customers | 5 categories | 20 products
--   30 orders    | 60 order_items
-- ============================================================