---***************************************************	
--Retrieve the maximum revenue for each region
--This query finds the maximum revenue for each unique region in the sales table. 
--The MAX(revenue) function is applied to get the maximum value within each region group.
---***************************************************	


CREATE OR REPLACE FUNCTION fn_max_revenue_region()
RETURNS Table(region_name VARCHAR,total_revenue INT)
LANGUAGE plpgsql
AS $$
BEGIN
   RETURN QUERY
   select s.region,max(revenue)as total_revenue
   from sales s
   group by region;
END;
$$;
SELECT * FROM fn_max_revenue_region();