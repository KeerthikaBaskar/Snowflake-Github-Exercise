CREATE STREAM orders_stream
ON TABLE raw.orders_raw;

CREATE TASK task_load_orders
WAREHOUSE = COMPUTE_WH
SCHEDULE = '1 MINUTE'
WHEN SYSTEM$STREAM_HAS_DATA('orders_stream')
AS

INSERT INTO staging.orders_clean
SELECT
raw_variant:order_id::STRING,
raw_variant:customer_id::STRING,
raw_variant:seller_id::STRING,
raw_variant:product_id::STRING,
raw_variant:order_amount::NUMBER,
raw_variant:order_date::DATE,
raw_variant:payment_method::STRING,
raw_variant:shipping_address::STRING,
load_time
FROM orders_stream
WHERE METADATA$ACTION = 'INSERT';