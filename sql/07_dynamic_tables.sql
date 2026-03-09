CREATE DYNAMIC TABLE analytics.daily_revenue
TARGET_LAG = '1 minute'
WAREHOUSE = COMPUTE_WH
AS

SELECT
order_date,
SUM(order_amount) revenue,
COUNT(order_id) total_orders
FROM core.fact_orders
GROUP BY order_date;