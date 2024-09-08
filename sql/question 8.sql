CREATE TEMPORARY TABLE temp_store_sales AS
SELECT 
    o.store_id,
    SUM(oi.list_price * oi.quantity) AS total_sales
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.store_id;
select * from temp_store_sales;
