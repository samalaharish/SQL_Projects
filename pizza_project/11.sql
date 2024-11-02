-- Calculate the percentage contribution of each pizza type to total revenue.

select * from pizza_types;
select * from pizzas ;
select * from orders_details;

SELECT 
    pizza_types.category, 
    SUM(orders_details.quantity * pizzas.price) AS total_revenue,
    ROUND(
        SUM(orders_details.quantity * pizzas.price) / 
        (SELECT SUM(orders_details.quantity * pizzas.price) 
         FROM orders_details
         JOIN pizzas ON orders_details.pizza_id = pizzas.pizza_id) * 100, 2
    ) AS percentage_of_total
FROM 
    pizzas
JOIN 
    pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id 
JOIN 
    orders_details ON pizzas.pizza_id = orders_details.pizza_id
GROUP BY 
    pizza_types.category
ORDER BY  
    total_revenue DESC;



