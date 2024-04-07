---*************************************************************
----How to insert staff data with given details into the database by using function
--INSERT statement adds a new staff member (staff_id 4) with specified details into the "staff" table
---***************************************************************************
CREATE OR REPLACE FUNCTION fn_insert_staff()
RETURNS VOID
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO staff (staff_id, first_name, last_name, address_id, email, store_id, active, username, password, last_update)
    VALUES (4, 'hello', 'Hill', 3, 'hello@sakilastaff.com', 1, true, 'Mike', '8cb2237d0679ca88db6464eac60da96345513968', '2006-05-16 16:13:11.79328');
END;
$$;