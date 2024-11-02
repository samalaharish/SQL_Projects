use pizzahut;

show tables;

select * from pizzas;
select* from orders_details;

-- Calculate the total revenue generated from pizza sales.
SELECT 
    sum(orders_details.quantity * pizzas.price) AS total_revenue
FROM 
    orders_details
JOIN 
    pizzas ON orders_details.pizza_id = pizzas.pizza_id;
