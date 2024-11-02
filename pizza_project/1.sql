use pizzahut;
show tables;


create table orders(
order_id int primary key not null,
order_date date not null,
order_time time not null);

create table orders_details(
order_details_id int primary key not null,
order_id int not null,
Pizza_id text not null,
quantity int not null);

select * from pizzas;
select * from orders;
select * from pizza_types;
select * from orders_details;

-- Retrieve the total number of orders placed
SELECT COUNT(order_id) AS total_orders 
FROM orders_details;







Intermediate:
Join the necessary tables to find the total quantity of each pizza category ordered.
Determine the distribution of orders by hour of the day.
Join relevant tables to find the category-wise distribution of pizzas.
Group the orders by date and calculate the average number of pizzas ordered per day.
Determine the top 3 most ordered pizza types based on revenue.

Advanced:
Calculate the percentage contribution of each pizza type to total revenue.
Analyze the cumulative revenue generated over time.
Determine the top 3 most ordered pizza types based on revenue for each pizza category.