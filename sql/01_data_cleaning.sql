-- ==========================================
-- STEP 1: CLEAN CUSTOMERS TABLE
-- ==========================================
DROP TABLE IF EXISTS clean_customers;
CREATE TABLE clean_customers AS
SELECT
customer_id,
age,
gender,
country
FROM raw_customers;
-- ==========================================
-- STEP 2: CLEAN TRANSACTIONS TABLE
-- ==========================================
DROP TABLE IF EXISTS clean_transactions;
CREATE TABLE clean_transactions AS
SELECT
transaction_id,
customer_id,
DATE(transaction_date) AS transaction_date,
product_category,
CAST(REPLACE(unit_price, '$', '') AS DECIMAL(10,2)) AS unit_price,
ABS(quantity) AS quantity,
status
FROM raw_transactions
WHERE CAST(REPLACE(unit_price, '$', '') AS DECIMAL(10,2)) > 0;
