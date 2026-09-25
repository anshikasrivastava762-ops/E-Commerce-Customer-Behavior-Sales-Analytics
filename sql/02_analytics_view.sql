DROP VIEW IF EXISTS v_ecommerce_sales;
CREATE VIEW v_ecommerce_sales AS
SELECT
t.transaction_id,
t.customer_id,
c.age,
c.gender,
c.country,
t.transaction_date,
YEAR(t.transaction_date) AS txn_year,
MONTH(t.transaction_date) AS txn_month,
t.product_category,
t.unit_price,
t.quantity,
(t.unit_price * t.quantity) AS total_revenue,
t.status,
CASE
WHEN t.status = 'Returned' THEN 1
ELSE 0
END AS is_return
FROM clean_transactions t
LEFT JOIN clean_customers c
ON t.customer_id = c.customer_id;
