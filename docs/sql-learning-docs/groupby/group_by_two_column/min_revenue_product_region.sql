---***************************************************	
--Retrieve the minimum revenue for each combination of product and region
--This query finds the minimum revenue for each unique combination of product and region in the sales table.
--The MIN(revenue) function is applied to get the minimum value within each group.
---***************************************************	
select product,region,min(revenue)as total_revenue
from sales
group by product,region;