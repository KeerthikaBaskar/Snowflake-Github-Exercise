CREATE TABLE core.dim_customer
(
customer_sk NUMBER AUTOINCREMENT,
customer_id STRING,
shipping_address STRING,
start_date DATE,
end_date DATE,
is_current BOOLEAN
);