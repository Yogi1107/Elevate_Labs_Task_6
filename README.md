# Sales Trend Analysis Using SQL Aggregations

This project demonstrates how to analyze monthly revenue and order volume from an e-commerce dataset using SQL. It uses basic SQL operations like `SUM()`, `COUNT()`, `GROUP BY`, and date extraction to generate a sales trend report.

---

## Tools Used

- **Database**: PostgreSQL (can be adapted for MySQL or SQLite)
- **Language**: SQL
- **Table**: `orders`

---

## Objective

- Calculate **monthly revenue** using `SUM(amount)`
- Calculate **monthly order volume** using `COUNT(DISTINCT order_id)`
- Use date functions to group data by **year** and **month**
- Sort and optionally filter results by specific date ranges

---

## Dataset Structure

Table: `orders`

| Column Name | Data Type     | Description              |
|-------------|---------------|--------------------------|
| order_id    | INT           | Unique identifier for order |
| order_date  | DATE          | Date when the order was placed |
| amount      | DECIMAL(10,2) | Order amount (revenue) |
| product_id  | INT           | ID of the purchased product |

