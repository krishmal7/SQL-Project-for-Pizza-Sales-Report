----KPIs----

select *
from pizza_sales

--Total Revenue:
select sum(total_price) as Total_Revenue
from pizza_sales


-- AVG order value
select sum(total_price)/ COUNT(distinct order_id) as Average_order_value
from pizza_sales

--Total pizza sold
select sum(quantity) as Total_Pizza_Sold
from pizza_sales

--total number of orders
select count(distinct order_id) as Total_orders
from pizza_sales

--Average pizzas per order
 SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) / 
CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2))
AS Avg_Pizzas_per_order
FROM pizza_sales
