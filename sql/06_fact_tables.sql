CREATE TABLE core.fact_orders
(
order_id STRING,
customer_id STRING,
seller_id STRING,
product_id STRING,
order_amount NUMBER,
order_date DATE
)
CLUSTER BY(order_date);