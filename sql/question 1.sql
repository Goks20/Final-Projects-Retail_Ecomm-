use retail_ecomm;
select * from customers;
select * from orders ;
select * from customers join orders on customers.customer_id=orders.customer_id;