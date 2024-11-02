-- Determine the distribution of orders by hour of the day.

select * from pizzas;
select * from orders;
select * from pizza_types;
select * from orders_details;

select hour(order_time), count(order_id) from orders
group by hour(order_time);


