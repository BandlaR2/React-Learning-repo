---***************************************************	
--Retrieve the maximum revenue for each region
--This query finds the maximum revenue for each unique region in the sales table. 
--The MAX(revenue) function is applied to get the maximum value within each region group.
---***************************************************	
select region,max(revenue)as total_revenue
from sales
group by region;