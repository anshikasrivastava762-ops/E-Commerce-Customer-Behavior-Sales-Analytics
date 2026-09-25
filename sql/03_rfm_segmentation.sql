DROP TABLE IF EXISTS customer_rfm_segments;

-- Create temporary table with RFM metrics
CREATE TEMPORARY TABLE temp_rfm_calc AS
SELECT
customer_id,
MAX(transaction_date) AS last_purchase_date,
DATEDIFF('2025-12-31', MAX(transaction_date)) AS recency_days,
COUNT(DISTINCT transaction_id) AS frequency,
SUM(
CASE
WHEN status = 'Completed'
THEN total_revenue
ELSE 0
END
) AS monetary_value
FROM v_ecommerce_sales
GROUP BY customer_id;
CREATE TABLE customer_rfm_segments AS
SELECT
customer_id,
last_purchase_date,
recency_days,
frequency,
monetary_value,
NTILE(4) OVER (
ORDER BY recency_days ASC
) AS r_score,
NTILE(4) OVER (
ORDER BY frequency ASC
) AS f_score,
NTILE(4) OVER (
ORDER BY monetary_value ASC
) AS m_score
FROM temp_rfm_calc;
DROP TEMPORARY TABLE temp_rfm_calc;
