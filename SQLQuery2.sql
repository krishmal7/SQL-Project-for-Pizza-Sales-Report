----For Charts----
select *
from pizza_sales

--daily trend for total orders

select datename(weekday,order_date) as DAYS, COUNT(distinct order_id) as Orders
from pizza_sales
group by datename(weekday,order_date)

-- Monthly trend for total orders

select datename(month,order_date) as Month, COUNT(distinct order_id) as Orders
from pizza_sales
group by datename(month,order_date)
order by COUNT(distinct order_id) desc

--percentage of sales by pizza category
select pizza_category, (SUM(total_price)/(select SUM(total_price) from pizza_sales))*100 as percentage_of_sales
from pizza_sales
group by pizza_category

--percentage of sales by pizza size
select pizza_size, (SUM(total_price)/(select SUM(total_price) from pizza_sales))*100 as percentage_of_sales
from pizza_sales
group by pizza_size

--Top 5 Pizzas by Revenue
select top(5) pizza_name, sum(total_price) as Revenue
from pizza_sales
group by pizza_name
order by sum(total_price) desc

-- Top 5 Pizzas by Quantity
select top(5) pizza_name, sum(quantity) as Quantity
from pizza_sales
group by pizza_name
order by sum(quantity) desc

--Top 5 Pizzas by Total Orders
select top(5) pizza_name, count(distinct order_id) as Orders
from pizza_sales
group by pizza_name
order by Orders desc