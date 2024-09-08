SELECT 
    o.store_id,
    SUM(oi.list_price * oi.quantity) AS total_sales,
    RANK() OVER (ORDER BY SUM(oi.list_price * oi.quantity) DESC) AS sales_rank
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.store_id;
select * from order_items;
