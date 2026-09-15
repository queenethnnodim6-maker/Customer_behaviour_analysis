# Customer Behaviour Analysis

## Project Overview

This project uses MySQL to analyze customer behaviour and buying
patterns using customer and order data.

The analysis focuses on customer purchasing frequency, revenue
contribution, product categories, geographic performance,
membership tiers, quantity sold, and acquisition channels.

The goal was to use SQL to answer business questions and identify
patterns that could support data-driven decision-making.

## Tools Used

- MySQL
- SQL
- GitHub

## Dataset

The analysis uses two main tables:

### Customers
Contains customer information such as:
- customer_id
- country
- age
- gender
- membership_tier
- registration_date
- total_orders
- total_spend_usd
- avg_order_value_usd
- preferred_category
- preferred_device
- churned


### Orders
Contains transaction information such as:
- order_id
- customer_id
- order_date
- product_name
- category
- unit_price_usd
- quantity
- subtotal_usd
- discount_pct
- discount_amount_usd
- shipping_fee_usd
- tax_amount_usd
- total_amount_usd
- payment_method
- device_used
- order_status
- returned
- customer_rating

## Business Questions

The analysis answers questions such as:

1. Which customers placed the highest number of orders?
2. How much revenue did each customer generate?
3. Who are the top 10 customers by revenue?
4. Which product categories generated the most revenue?
5. What is the average order value by category?
6. Which countries generated the most revenue?
7. Which membership tier generated the most revenue?
8. Which customers placed more than 5 orders?
9. Which customers generated more than $1,000?
10. Which days of the week recorded the highest quantity sold?
11. Which acquisition channels generated more than $50,000 in revenue?

## SQL Techniques Used

- SELECT
- WHERE
- INNER JOIN
- GROUP BY
- ORDER BY
- LIMIT
- COUNT()
- SUM()
- AVG()
- ROUND()
- HAVING
- Aggregate functions
- Data type modification
- Primary key creation

# Key Insights

### 1. High-value customers
The analysis revealed that the customer with the highest order had a sum of $3602.81

### 2. Product category performance
The analysis revealed that the Electronics category was the best performing product category 
with a total revenue of $1148937


### 3. Acquisition channels
It showed that the Organic Search	channel generated the most revenue with a total of $870152.32

# Business Insights & Recommendations

## Recommendations

### 1. Strengthen Customer Retention

Identify customers with high order frequency and high revenue contribution and develop targeted retention strategies for them. These customers demonstrate strong purchasing activity and may represent an important segment for repeat purchases.

### 2. Focus on High-Performing Product Categories

Product categories generating the highest revenue should receive closer attention when making inventory, promotional, and marketing decisions. The business can investigate what makes these categories perform well and explore opportunities to increase their sales further.

### 3. Increase the Value of Lower-Performing Customers

Customers with fewer orders or lower total spending could be targeted with personalized promotions, product recommendations, loyalty incentives, or follow-up campaigns designed to encourage repeat purchases.

### 4. Use Membership Tiers to Guide Customer Strategies

Revenue performance across membership tiers can help the business understand which customer groups contribute most to sales. The business can strengthen loyalty benefits and engagement strategies based on the purchasing behaviour of each tier.

### 5. Optimize Customer Acquisition Channels

Acquisition channels generating substantial revenue should be monitored closely to understand the customers they attract and the revenue they contribute. Lower-performing channels can be reviewed to determine whether changes in targeting, messaging, or marketing investment are necessary.

### 6. Use Purchasing Patterns to Improve Campaign Timing

Differences in quantity sold across days of the week can help the business identify periods of higher customer activity. Promotional campaigns and sales activities can be scheduled around these purchasing patterns.

### 7. Prioritize High-Value Customers

Customers generating significant revenue should be identified and monitored as a distinct customer segment. The business can develop personalized offers, loyalty incentives, and engagement strategies aimed at maintaining their relationship with the brand.

### 8. Use Geographic Revenue Patterns for Market Planning

Countries contributing the most revenue can be examined further to understand where demand is strongest. This information can support decisions around marketing focus, customer acquisition, product availability, and market expansion.

## Overall Recommendation

The business should use customer purchasing behaviour, revenue contribution, product performance, and acquisition-channel data together rather than looking at each metric in isolation. Combining these insights can help the business make more informed decisions about customer retention, marketing investment, product strategy, and revenue growth.
...

## Project Outcome

The analysis demonstrates how SQL can be used to transform
raw customer and transaction data into meaningful business
insights around customer behaviour, purchasing patterns,
revenue performance and acquisition effectiveness.

## Files

- `customer_behaviour_analysis.sql` — SQL queries used for the analysis.
