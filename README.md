# Customer Orders Analysis

## Project Overview

This project analyzes e-commerce order data using MySQL to explore sales performance, product categories, monthly revenue, payment methods, returns, membership tiers, and customer spending.

## Objectives

- Measure overall order volume, revenue, and average order value.
- Identify product categories with the highest revenue.
- Explore product subcategory sales.
- Examine monthly sales trends.
- Compare payment methods and membership tiers.
- Analyze order return records.
- Identify the highest-spending customers.

## Tools Used

- MySQL
- SQL
- GitHub

## Dataset

The project uses the `Ecommerce_2000.csv` dataset, containing 2,000 records and 23 columns.

The data includes order dates, customer information, product categories, prices, quantities, discounts, final amounts, payment methods, membership tiers, return status, and review scores.

Dataset source: https://www.kaggle.com/datasets/akshayshirol/e-commerce-customer-order-dataset

## Initial Findings

The following findings are based on the initial SQL queries:

- Total records analyzed: 2,000.
- Total revenue: 457,495.92 (currency not yet verified).
- Average order value: 228.75 (currency not yet verified).
- Electronics generated the highest category revenue at 190,347.23.
- Sports & Outdoors ranked second in category revenue at 66,589.37.
- Home & Kitchen ranked third in category revenue at 53,614.89.
- Health & Wellness had the highest category record count in the initial output, with 217 records.

## SQL Analyses

The `analysis.sql` file contains queries for:

1. Overall business performance.
2. Revenue by product category.
3. Top product subcategories by units sold.
4. Monthly revenue.
5. Payment method analysis.
6. Order return analysis.
7. Revenue by membership tier.
8. Top customers by total spending.
