----**************************************************
---Filename: fn_active_customers.sql
---"Retrieve all information about customers who are inactive?"
---fn_active_customers retrieves rows with inactive customers (active=0) from the customer table.
----**************************************************
CREATE OR REPLACE FUNCTION fn_inactive_customers()
RETURNS SETOF customer
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT *
    FROM customer
    WHERE active = 0;
END;
$$;