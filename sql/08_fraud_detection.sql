CREATE TABLE analytics.fraud_orders AS

SELECT
order_id,
customer_id,
order_amount,
order_date,

CASE
WHEN order_amount > 10000 THEN 'HIGH_VALUE_FRAUD'
ELSE 'NORMAL'
END AS fraud_flag

FROM core.fact_orders;