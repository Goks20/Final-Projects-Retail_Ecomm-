SELECT 
    order_id,
    order_date,
    shipped_date,
    DATEDIFF(shipped_date, order_date) AS days_to_ship
FROM orders;
