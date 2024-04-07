----***********************************************************************
--How to update the address_id for a store by using function
--Updates store address_id from 4 to 3 in "store" table.
----***********************************************************************
	
CREATE OR REPLACE FUNCTION fn_update_store_address()
RETURNS VOID
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE store
    SET address_id = 3
    WHERE address_id = 4;
END;
$$;