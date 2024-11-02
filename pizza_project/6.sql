-- Join the necessary tables to find the total quantity of each pizza category ordered.

select * from pizzas;
select * from pizza_types;
select * from orders_details;


SELECT 
    pizza_types.category, 
    SUM(orders_details.quantity) AS quantity_ordered
FROM 
    pizzas
JOIN 
    pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id
JOIN 
    orders_details ON pizzas.pizza_id = orders_details.pizza_id
GROUP BY 
    pizza_types.category
ORDER BY 
    quantity_ordered DESC;

