SELECT 
    o.order_id,
    s.store_name,
    p.product_name,
    oi.quantity,
    oi.list_price,
    (oi.quantity * oi.list_price) AS total_price
FROM 
    orders o
JOIN 
    order_items oi ON o.order_id = oi.order_id
JOIN 
    products p ON oi.product_id = p.product_id
JOIN 
    stores s ON o.store_id = s.store_id;
