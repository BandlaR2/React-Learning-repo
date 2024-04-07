----***********************************************************************
---How to insert new values into the "store" table 
---Inserts new store data with specified details into the "store" table.
----***********************************************************************


CREATE OR REPLACE FUNCTION fn_insert_store_values()
RETURNS VOID
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO store (store_id, manager_staff_id, address_id, last_update)
    VALUES (3, 3, 4, '2006-02-15 09:57:12');
END;
$$;