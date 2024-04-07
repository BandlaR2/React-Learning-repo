---***************************************************	
---Retrieve total revenue for each combination of product and region
--This query calculates the total revenue for each unique combination 
--the SUM(revenue) function is used to sum the revenue for each group
---***************************************************	

CREATE OR REPLACE FUNCTION fn_total_revenue_product_region_info()
RETURNS Table(product_name VARCHAR,region_name VARCHAR,total_revenue BIGINT)
LANGUAGE plpgsql
AS $$
BEGIN
   RETURN QUERY
    select s.product,s.region,sum(revenue)as total_revenue
    from sales s
    group by product,region;
END;
$$;


SELECT * FROM fn_total_revenue_product_region_info();


