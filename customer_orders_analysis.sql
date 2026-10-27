-- PROJECT OBJECTIVE:
-- Analyze e-commerce order data to understand sales performance,
-- product category performance, customer spending, payment methods,
-- membership tiers, monthly revenue, and product returns.

-- Customer Orders Analysis
-- Database: customer_orders_analysis
-- Table: ecommerce_orders

USE customer_orders_analysis;

-- 1. Total sales and orders
SELECT
    COUNT(*) AS total_orders,
    ROUND(SUM(FinalAmount), 2) AS total_revenue,
    ROUND(AVG(FinalAmount), 2) AS average_order_value
FROM ecommerce_orders;

-- 2. Revenue by product category 
-- Q) Which product category generates the most revenue?
SELECT
    ProductCategory,
    COUNT(*) AS total_orders,
    ROUND(SUM(FinalAmount), 2) AS total_revenue
FROM ecommerce_orders
GROUP BY ProductCategory
ORDER BY total_revenue DESC;

-- 3. Which 10 subcategories sell the most units?
SELECT
    ProductSubCategory,
    SUM(Quantity) AS units_sold,
    ROUND(SUM(FinalAmount), 2) AS total_revenue
FROM ecommerce_orders
GROUP BY ProductSubCategory
ORDER BY units_sold DESC
LIMIT 10;

-- 4. How does revenue change over time?
SELECT
    YEAR(OrderDate) AS order_year,
    MONTH(OrderDate) AS order_month,
    COUNT(*) AS total_orders,
    ROUND(SUM(FinalAmount), 2) AS monthly_revenue
FROM ecommerce_orders
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
ORDER BY order_year, order_month;

-- 5. Which payment methods do customers use most often?
SELECT
    PaymentMethod,
    COUNT(*) AS total_orders,
    ROUND(SUM(FinalAmount), 2) AS total_revenue
FROM ecommerce_orders
GROUP BY PaymentMethod
ORDER BY total_orders DESC;

-- 6. What percentage of orders are marked as returned?
SELECT
    Returned,
    COUNT(*) AS total_orders,
    ROUND(100.0 * COUNT(*) /
        (SELECT COUNT(*) FROM ecommerce_orders), 2) AS percentage
FROM ecommerce_orders
GROUP BY Returned;

-- 7. Which membership tier contributes the most revenue?
SELECT
    MembershipTier,
    COUNT(*) AS total_orders,
    ROUND(SUM(FinalAmount), 2) AS total_revenue,
    ROUND(AVG(FinalAmount), 2) AS average_order_value
FROM ecommerce_orders
GROUP BY MembershipTier
ORDER BY total_revenue DESC;

-- 8. Who are the highest-spending customers?
SELECT
    CustomerID,
    FirstName,
    LastName,
    COUNT(*) AS total_orders,
    ROUND(SUM(FinalAmount), 2) AS total_spent
FROM ecommerce_orders
GROUP BY CustomerID, FirstName, LastName
ORDER BY total_spent DESC
LIMIT 10;