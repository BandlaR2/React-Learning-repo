-------***************************************************	
---Retrieve total revenue for each product
---This query calculates the total revenue for each unique product in the sales table.
--The SUM(revenue) function is used to sum the revenue for each product group.
---***************************************************	
select product,sum(revenue)as total_revenue
from sales
group by product;