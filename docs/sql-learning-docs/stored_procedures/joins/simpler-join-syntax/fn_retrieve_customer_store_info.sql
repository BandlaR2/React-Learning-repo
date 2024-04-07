------*********************************************
---"Retrieve customer names and store_id for store_id=2,group by .
--This SQL query retrieves customer names and store_id for a specific store (store_id=2) 
--from the 'customer' and 'store' tables,
--grouping by customer names
------*********************************************

CREATE OR REPLACE FUNCTION fn_get_store_count_by_customer()
RETURNS TABLE (first_name VARCHAR, store_count INT)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT c.first_name, s.store_id AS store_count
    FROM customer AS c
    JOIN store AS s ON c.store_id = s.store_id
    WHERE s.store_id = 2
    GROUP BY c.first_name, s.store_id;
END;
$$;