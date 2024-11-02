-- Identify the most common pizza size ordered.

select * from pizzas;
select * from orders;
select * from pizza_types;
select * from orders_details;

select pizzas.size, count(orders_details.quantity) 
from pizzas
join orders_details
on pizzas.pizza_id=orders_details.Pizza_id
group by pizzas.size limit 1;