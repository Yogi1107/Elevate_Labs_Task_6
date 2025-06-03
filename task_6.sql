-- Create the database
CREATE DATABASE online_sales;

-- Connect to the database (only required in some systems)
\c online_sales;

-- Create the orders table
CREATE TABLE orders (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    product_id INT
);

-- Insert sample data
INSERT INTO orders (order_id, order_date, amount, product_id) VALUES
(1, '2023-01-15', 200.00, 101),
(2, '2023-01-17', 150.00, 102),
(3, '2023-02-01', 100.00, 103),
(4, '2023-02-14', 175.00, 104),
(5, '2023-03-03', 300.00, 105),
(6, '2023-03-29', 120.00, 106),
(7, '2023-03-30', 400.00, 107),
(8, '2023-04-01', 250.00, 108),
(9, '2023-04-15', 350.00, 109),
(10, '2023-04-20', 180.00, 110);

-- Monthly revenue and order volume analysis
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM 
    orders
GROUP BY 
    year, month
ORDER BY 
    year, month;

-- Monthly analysis limited to March and April 2023
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM 
    orders
WHERE 
    order_date BETWEEN '2023-03-01' AND '2023-04-30'
GROUP BY 
    year, month
ORDER BY 
    year, month;

-- Explanation
-- EXTRACT(YEAR FROM order_date) AS year: Extracts the year from the order_date.
-- EXTRACT(MONTH FROM order_date) AS month: Extracts the month from the order_date.
-- SUM(amount) AS total_revenue: Sums the amount field to calculate the total revenue for each month.
-- COUNT(DISTINCT order_id) AS total_orders: Counts the distinct order_ids to get the total number of unique orders for each month.
-- GROUP BY year, month: Groups the results by year and month to calculate monthly totals.
-- ORDER BY year, month: Sorts the results by year and month in ascending order.