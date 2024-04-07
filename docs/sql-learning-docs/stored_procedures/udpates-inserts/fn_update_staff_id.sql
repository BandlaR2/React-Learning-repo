---*************************************************************
---Update staff_id from 4 to 3 for a specific staff member by using functions.
--This SQL update statement modifies the staff_id for a specific staff member in the "staff" table
---*************************************************************

CREATE OR REPLACE FUNCTION fn_update_staff_id()
RETURNS VOID
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE staff
    SET staff_id = 3
    WHERE staff_id = 4;
END;
$$;