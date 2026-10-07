/* ==========================================================================
   E-COMMERCE SALES ANALYTICS: SQL ANALYSIS (Step 2)
   --------------------------------------------------------------------------
   Objective : Analyse the cleaned e-commerce sales data to answer key
               business questions about revenue, customers, products,
               regions, payments and delivery.
   Database  : ecommerce_db
   Table     : orders (5,000 rows, 12 columns)
   Source    : Cleaned dataset prepared in Step 1 (Python / pandas)

   Columns   : order_id, order_date, customer_id, product_category, region,
               quantity, unit_price, discount, payment_method,
               delivery_days, customer_rating, revenue

   Topics    : Setup, exploration, KPIs, revenue breakdown, customers,
               time trends, product categories, payment, delivery, discounts
   ========================================================================== */


/* ==========================================================================
   DATABASE & TABLE SETUP
   ========================================================================== */

-- Create the database (only if it doesn't already exist) and switch to it.
CREATE DATABASE IF NOT EXISTS ecommerce_db;
USE ecommerce_db;

-- Drop any old version of the table so the script can be re-run safely.
DROP TABLE IF EXISTS orders;

-- Create the orders table.
-- order_id is the PRIMARY KEY, so every order is unique.
-- DECIMAL is used for prices, discounts and revenue to avoid rounding errors.
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    customer_id VARCHAR(10),
    product_category VARCHAR(50),
    region VARCHAR(20),
    quantity INT,
    unit_price DECIMAL(10,2),
    discount DECIMAL(5,2),
    payment_method VARCHAR(30),
    delivery_days INT,
    customer_rating DECIMAL(2,1),
    revenue DECIMAL(12,2)
);


/* ==========================================================================
   BASIC EXPLORATION
   ========================================================================== */

-- List all databases and confirm ecommerce_db exists.
SHOW DATABASES;

-- List the tables in the current database and confirm orders exists.
SHOW TABLES;

-- View all records in the orders table.
SELECT * FROM orders;


/* ==========================================================================
   KEY BUSINESS METRICS (KPIs)
   ========================================================================== */

-- Q1. How many orders were placed in total?
-- COUNT(*) counts every row, and each row is one order.
SELECT COUNT(*) AS TOTAL_ORDER FROM ORDERS; 

-- Q2. What is the total revenue?
-- Adds up the revenue column across all orders.
select sum(revenue) as total_revenue from orders;

-- Q3. How many units were sold in total?
-- Adds up the quantity column across all orders.
select sum(quantity) as total_quantity_sold from orders;

-- Q4. How many unique customers are there?
-- COUNT(DISTINCT ...) counts each customer only once, even if they ordered many times.
-- NOTE: This query refers to a table called ecommerce_sales, but the table
-- created above is orders. It will return an error until the table name matches.
SELECT COUNT(DISTINCT customer_id) AS unique_customers
FROM ecommerce_sales;

-- Q5. What is the average customer rating?
-- AVG() gives the mean rating across all orders.
select avg(customer_rating) as average_customer_rating from orders;


/* ==========================================================================
   REVENUE BREAKDOWN
   ========================================================================== */

-- Q6. How much revenue does each product category generate?
-- GROUP BY splits the data by category, and SUM() totals the revenue in each group.
SELECT product_category,
       SUM(revenue) AS total_revenue
FROM orders
GROUP BY product_category;

-- Q7. How much revenue does each region generate?
-- Same idea as above, grouped by region instead.
SELECT region,
       SUM(revenue) AS total_revenue
FROM orders
GROUP BY region;


/* ==========================================================================
   CUSTOMER ANALYSIS
   ========================================================================== */

-- Q8. Who are the top 10 customers by total spending?
-- Totals each customer's revenue, sorts from highest to lowest,
-- and LIMIT 10 keeps only the top 10.
SELECT customer_id,
       SUM(revenue) AS total_spending
FROM orders
GROUP BY customer_id
ORDER BY total_spending DESC
LIMIT 10;


/* ==========================================================================
   TIME-BASED ANALYSIS
   ========================================================================== */

-- Q9. What is the monthly revenue trend?
-- YEAR() and MONTH() pull the year and month out of order_date.
-- Revenue is totalled for each year-month and sorted in time order.
SELECT YEAR(order_date) AS year,
       MONTH(order_date) AS month,
       SUM(revenue) AS monthly_revenue
FROM orders
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;

-- Q10. What is the average order value (AOV)?
-- Total revenue divided by the number of orders gives the average revenue per order.
SELECT SUM(revenue) / COUNT(order_id) AS average_order_value
FROM orders;


/* ==========================================================================
   CUSTOMER ANALYSIS
   ========================================================================== */

-- Q11. Which customers spend more than the average customer?
-- Inner subquery : total spending of each customer.
-- Middle subquery: the average of those customer totals.
-- HAVING keeps only the customers whose total is above that average.
SELECT customer_id,
       SUM(revenue) AS total_spending
FROM orders
GROUP BY customer_id
HAVING SUM(revenue) > (
    SELECT AVG(customer_total)
    FROM (
        SELECT customer_id,
               SUM(revenue) AS customer_total
        FROM orders
        GROUP BY customer_id
    ) AS customer_data
);


/* ==========================================================================
   PRODUCT CATEGORY ANALYSIS
   ========================================================================== */

-- Q12. Which category earns the highest revenue?
-- Sort the categories by revenue (high to low) and keep only the first row.
SELECT product_category,
       SUM(revenue) AS total_revenue
FROM orders
GROUP BY product_category
ORDER BY total_revenue DESC
LIMIT 1;

-- Q13. Which category sells the most units?
-- Same approach as Q12, but ranked by quantity sold instead of revenue.
SELECT product_category,
       SUM(quantity) AS total_quantity
FROM orders
GROUP BY product_category
ORDER BY total_quantity DESC
LIMIT 1;

-- Q14. Rank all categories by revenue.
-- The RANK() window function gives rank 1 to the highest-revenue category.
-- Unlike LIMIT, this keeps every category and shows its position.
SELECT product_category,
       SUM(revenue) AS total_revenue,
       RANK() OVER (ORDER BY SUM(revenue) DESC) AS revenue_rank
FROM orders
GROUP BY product_category;

-- Q15. What are the top 3 categories by revenue?
SELECT product_category,
       SUM(revenue) AS total_revenue
FROM orders
GROUP BY product_category
ORDER BY total_revenue DESC
LIMIT 3;

-- Q16. What share of total revenue does each category contribute?
-- Category revenue is divided by overall revenue (from the subquery) and
-- multiplied by 100 to get a percentage, rounded to 2 decimal places.
SELECT product_category,
       SUM(revenue) AS category_revenue,
       ROUND(
           SUM(revenue) * 100.0 /
           (SELECT SUM(revenue) FROM orders),
           2
       ) AS revenue_percentage
FROM orders
GROUP BY product_category;


/* ==========================================================================
   TIME-BASED ANALYSIS
   ========================================================================== */

-- Q17. Which month had the highest revenue?
-- Same monthly grouping as Q9, but sorted by revenue and limited to the top row.
SELECT YEAR(order_date) AS year,
       MONTH(order_date) AS month,
       SUM(revenue) AS monthly_revenue
FROM orders
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY monthly_revenue DESC
LIMIT 1;


/* ==========================================================================
   CUSTOMER ANALYSIS
   ========================================================================== */

-- Q18. What is the average revenue per customer?
-- Total revenue divided by the number of distinct customers.
SELECT SUM(revenue) / COUNT(DISTINCT customer_id) AS average_revenue_per_customer
FROM orders;


/* ==========================================================================
   PAYMENT, DELIVERY & DISCOUNT ANALYSIS
   ========================================================================== */

-- Q19. How do the payment methods compare?
-- Shows total revenue and total units sold for each payment method.
SELECT payment_method,
       SUM(revenue) AS total_revenue,
       SUM(quantity) AS total_quantity
FROM orders
GROUP BY payment_method;

-- Q20. What is the average delivery time in each region?
-- AVG() of delivery_days per region, useful for spotting slower regions.
SELECT region,
       AVG(delivery_days) AS average_delivery_days
FROM orders
GROUP BY region;


/* ==========================================================================
   PRODUCT CATEGORY ANALYSIS
   ========================================================================== */

-- Q21. Which categories earn more than the average category?
-- Inner subquery : revenue of each category.
-- Middle subquery: the average of those category revenues.
-- HAVING keeps only the categories above that average.
SELECT product_category,
       SUM(revenue) AS total_revenue
FROM orders
GROUP BY product_category
HAVING SUM(revenue) > (
    SELECT AVG(category_revenue)
    FROM (
        SELECT product_category,
               SUM(revenue) AS category_revenue
        FROM orders
        GROUP BY product_category
    ) AS category_data
);


/* ==========================================================================
   REVENUE BREAKDOWN
   ========================================================================== */

-- Q22. What are the top 3 regions by revenue?
SELECT region,
       SUM(revenue) AS total_revenue
FROM orders
GROUP BY region
ORDER BY total_revenue DESC
LIMIT 3;


/* ==========================================================================
   PRODUCT CATEGORY ANALYSIS
   ========================================================================== */

-- Q23. Which category has the best average customer rating?
-- Averages the rating per category and keeps the highest one.
SELECT product_category,
       AVG(customer_rating) AS average_rating
FROM orders
GROUP BY product_category
ORDER BY average_rating DESC
LIMIT 1;


/* ==========================================================================
   PAYMENT, DELIVERY & DISCOUNT ANALYSIS
   ========================================================================== */

-- Q24. How does the discount level affect average revenue?
-- Groups orders by discount and compares the average revenue at each level,
-- sorted from the lowest to the highest discount.
SELECT discount,
       AVG(revenue) AS average_revenue
FROM orders
GROUP BY discount
ORDER BY discount;


/* ==========================================================================
   END OF ANALYSIS
   ========================================================================== */
