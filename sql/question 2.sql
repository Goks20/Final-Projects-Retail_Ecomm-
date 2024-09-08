SELECT 
    o.store_id,
    SUM(oi.quantity * oi.list_price) AS total_sales
FROM 
    orders o
JOIN 
    order_items oi ON o.order_id = oi.order_id
GROUP BY 
    o.store_id;
select * from orders;
select * from order_items;