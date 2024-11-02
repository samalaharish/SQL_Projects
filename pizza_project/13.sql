-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.

select * from pizzas;
select * from Pizza_types;
select * from orders_details;


select  category, name, revenue, rn
from
(select category, name, revenue, rank() over( partition by category order by revenue) as rn
from
(select pizza_types.category, pizza_types.name, sum(orders_details.quantity* pizzas.price) as revenue
from pizza_types join	pizzas
on pizzas.pizza_type_id=pizza_types.pizza_type_id
 join orders_details on orders_details.Pizza_id=pizzas.pizza_id
 group by pizza_types.category, pizza_types.name
 order by revenue) as a) as b
 where rn<=3;

select  category, name, revenue, rn
from
(select category, name, revenue, rank() over( order by revenue) as rn
from
(select pizza_types.category, pizza_types.name, sum(orders_details.quantity* pizzas.price) as revenue
from pizza_types join	pizzas
on pizzas.pizza_type_id=pizza_types.pizza_type_id
 join orders_details on orders_details.Pizza_id=pizzas.pizza_id
 group by pizza_types.category, pizza_types.name
 order by revenue) as a) as b
 where rn<=3;

