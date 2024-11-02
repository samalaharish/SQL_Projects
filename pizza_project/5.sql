-- List the top 5 most ordered pizza types along with their quantities.

select * from pizzas;
select * from orders_details;

select pizzas.pizza_type_id, sum(orders_details.quantity) as order_quantity
from pizzas join orders_details
on pizzas.pizza_id=orders_details.Pizza_id
group by pizzas.pizza_type_id
order by order_quantity desc limit 5;