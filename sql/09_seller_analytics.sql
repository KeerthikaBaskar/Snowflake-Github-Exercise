CREATE TABLE analytics.seller_performance AS

SELECT
seller_id,
COUNT(order_id) total_orders,
SUM(order_amount) revenue,
AVG(order_amount) avg_order_value
FROM core.fact_orders
GROUP BY seller_id;