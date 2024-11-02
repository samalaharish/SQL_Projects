-- Analyze the cumulative revenue generated over time.

select * from pizzas;
select * from orders;
select * from orders_details;

select order_date, sum(daily_revenue) over( order by order_date) as cumm_revenue 
from
(select orders.order_date, sum(orders_details.quantity*pizzas.price) as daily_revenue
from 
orders join orders_details on orders.order_id= orders_details.order_id
join pizzas on orders_details.Pizza_id=pizzas.pizza_id
group by order_date
order by order_date ) as sales;

