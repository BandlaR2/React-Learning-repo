----****************************************
---to retrieve the count of customers in the store with a store_id of 2?
--this function is designed to take a store_id as input
--and return the number of customers in the store
----****************************************



CREATE OR REPLACE FUNCTION fn_customers_in_store(store_id_input INT)
RETURNS INT
LANGUAGE plpgsql
AS $$
DECLARE
    v_customer_count INT;
BEGIN
    SELECT COUNT(*)
    INTO v_customer_count
    FROM customer
    WHERE store_id = store_id_input;

    RETURN v_customer_count;
END;
$$;