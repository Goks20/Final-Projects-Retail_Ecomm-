SELECT
    order_id,
    customer_id,
    order_date,
    order_status,
    CASE 
        WHEN order_status = 3 THEN 'Not Delivered'
        WHEN order_status = 4 THEN 'Delivered'
        ELSE 'Unknown Status'
    END AS order_status_category
FROM orders;
