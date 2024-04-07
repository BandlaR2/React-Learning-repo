----*********************************************************
----"How many records exist in the film_actor table?"
--returns the total number of records in the "film_actor" table
--FileName:fn_count_film_actor.sql
----**********************************************************
CREATE OR REPLACE FUNCTION fn_count_film_actor()
RETURNS bigint
LANGUAGE plpgsql
AS $$
DECLARE
   v_count bigint;
BEGIN
   SELECT COUNT(*) INTO v_count
   FROM film_actor;
   
   RETURN v_count;
END;
$$;


SELECT * FROM fn_count_film_actor();