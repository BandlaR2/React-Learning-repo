---***************************************************
--Retrieve distinct combinations of product and region
--This query retrieves distinct combinations of product and region from the sales table.
--The GROUP BY clause is used to group the results by the specified columns.
---***************************************************	
select product,region
from sales
group by product,region;