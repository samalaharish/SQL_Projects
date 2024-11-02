-- Join relevant tables to find the category-wise distribution of pizzas.
select * from pizzas;
select * from orders;
select * from pizza_types;
select * from orders_details;

select category, count(name) from pizza_types
group by category; 