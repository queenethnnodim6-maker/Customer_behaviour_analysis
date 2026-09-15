-----------------------------------------------------------
--  CUSTOMER BEHAVIOUR AND BUYING PATTERN ANALYSIS
--  Tool: MySQL
-- 	Author: Queeneth Nnodim
-------------------------------------------------------------

-----------------------------------------------------------
-- DATA INSPECTION AND PREPARATION
-------------------------------------------------------------

SELECT * FROM customers.orders;

DESCRIBE orders;

ALTER TABLE orders
MODIFY order_id VARCHAR(20) NOT NULL;

ALTER TABLE orders
ADD PRIMARY KEY (order_id);

SELECT *
FROM customer_11
LIMIT 10;

SELECT *
FROM orders
LIMIT 10;

ALTER TABLE orders
MODIFY COLUMN delivery_date DATE;

----------------------------------------------
-- KEY INSIGHTS
----------------------------------------------

-- ANALYSIS BY ORDERS
-- Q1: Customers with highest number of orders

SELECT c.customer_id, 
COUNT(o.order_id) total_orders
FROM customer_11 c
	INNER JOIN orders o
		ON c.customer_id =o.customer_id
GROUP BY c.customer_id
ORDER BY total_orders DESC;

-- ANALYSIS BY ORDERS
-- Q2: top 10 customers by orders

SELECT c.customer_id, 
COUNT(o.order_id) total_orders
FROM customer_11 c
	INNER JOIN orders o
		ON c.customer_id =o.customer_id
GROUP BY c.customer_id
ORDER BY total_orders DESC
LIMIT 10;


-- CUSTOMER_REVENUE ANALYSIS
-- Q3: How much revenue has each customer generated

SELECT c.customer_id, 
SUM(o.total_amount_usd) total_revenue
FROM customer_11 c
	INNER JOIN orders o
		ON c.customer_id =o.customer_id
GROUP BY c.customer_id
ORDER BY total_revenue DESC;

-- CUSTOMER_REVENUE ANALYSIS
-- Q4 Top 10 customers with the highest revenue

SELECT c.customer_id, 
SUM(o.total_amount_usd) total_revenue
FROM customer_11 c
	INNER JOIN orders o
		ON c.customer_id =o.customer_id
GROUP BY c.customer_id
ORDER BY total_revenue DESC
LIMIT 10;

-- PRODUCT CATEGORY ANALYSIS
-- Q5: Product categories with the most revenue

SELECT category,
	SUM(total_amount_usd) total_revenue
FROM orders
GROUP BY category
ORDER BY total_revenue DESC
LIMIT 10;

-- AVERAGE ORDER VALUE ANALYSIS
-- Q6: average order value by category

SELECT category,
	ROUND(AVG(total_amount_usd),2) Avg_order_value
FROM orders
GROUP BY category
ORDER BY Avg_order_value DESC;

-- GEOGRAPHIC ANALYSIS
-- Q7: Top 5 countries by revenue

SELECT c.country,
	ROUND(SUM(o.total_amount_usd),2) total_revenue
FROM customer_11 c
	INNER JOIN orders o
    ON c.customer_id =o.customer_id
GROUP BY c.country
ORDER BY total_revenue DESC
LIMIT 5;

-- MEMBERSHIP TIER ANALYSIS
-- Q8: Membership tier with the most revenue

SELECT c.membership_tier,
	ROUND(SUM(o.total_amount_usd),2) total_revenue
FROM customer_11 c
	INNER JOIN orders o
	ON c.customer_id = o.customer_id
GROUP BY c.membership_tier
ORDER BY total_revenue DESC;

-- CUSTOMER PURCHASE FREQUENCY
-- Q9: Customers with more than 5 orders

SELECT c.customer_id,
	COUNT(o.order_id) total_orders
FROM customer_11 c
	INNER JOIN orders o
	ON c.customer_id = o.customer_id
GROUP BY c.customer_id
HAVING COUNT(o.order_id) > 5
ORDER BY total_orders DESC;

-- CUSTOMER PURCHASE FREQUENCY
-- Customers with $1000 above

SELECT c.customer_id,
	ROUND(SUM(o.total_amount_usd),2) total_amount
FROM customer_11 c
	INNER JOIN orders o
	ON c.customer_id = o.customer_id
GROUP BY c.customer_id
HAVING 	ROUND(SUM(o.total_amount_usd),2) > 1000
ORDER BY total_amount DESC;

-- HIGHEST QUANTITY SOLD BY DAY OF THE WEEK
-- Q11 day of the week with highest quantiy sold

SELECT day_of_week,
	SUM(quantity) total_quantity
FROM orders
GROUP BY day_of_week
ORDER BY total_quantity DESC;

-- ACQUSITION CHANNEL ANALYSIS
-- Q12: Acquistion_channel that generated more than 50,000 USD

SELECT c.acquisition_channel,
	ROUND(SUM(o.total_amount_usd), 2) total_revenue
FROM customer_11 c
	INNER JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.acquisition_channel
HAVING ROUND(SUM(o.total_amount_usd), 2) > 50000
ORDER BY total_revenue DESC;

