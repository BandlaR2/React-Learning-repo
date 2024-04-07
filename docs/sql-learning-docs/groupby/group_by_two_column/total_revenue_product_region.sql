---***************************************************	
---Retrieve total revenue for each combination of product and region
--This query calculates the total revenue for each unique combination 
--the SUM(revenue) function is used to sum the revenue for each group
---***************************************************	
select product,region,sum(revenue)as total_revenue
from sales
group by product,region;