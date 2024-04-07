---***************************************************
--Retrieve distinct combinations of product and region
--This query retrieves distinct combinations of product and region from the sales table.
--The GROUP BY clause is used to group the results by the specified columns.
---***************************************************	

CREATE OR REPLACE FUNCTION fn_distinct_product_region_info()
RETURNS TABLE(product_name VARCHAR,region_name VARCHAR)
LANGUAGE plpgsql
AS $$
BEGIN
   RETURN QUERY
   select s.product as product_name ,s.region as region_name
   from sales s
   group by product,region;
END;
$$;

SELECT * FROM fn_distinct_product_region_info();
