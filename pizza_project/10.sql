-- Determine the top 3 most ordered pizza types based on revenue.

select * from pizza_types;
select * from pizzas ;
select * from orders_details;

select  pizza_types.name, sum(orders_details.quantity*pizzas.price) as revenue
from pizza_types join pizzas on pizza_types.pizza_type_id=pizzas.pizza_type_id
join orders_details on pizzas.pizza_id=orders_details.Pizza_id
group by pizza_types.name
order by revenue desc limit 3;