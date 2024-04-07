------********************************************
---"Retrieve films with titles starting with 'Al'?"	
---query retrieves all columns from the "film" table 
---where the "title" column starts with "Al" 
--FileName:fn_film_start_with_al.sql
-------***********************************************

CREATE OR REPLACE FUNCTION fn_film_start_with_al()
RETURNS SETOF film
LANGUAGE plpgsql
AS $$
BEGIN
   RETURN query
   SELECT *
   FROM film
   WHERE title LIKE 'AL%';
END;
$$;

SELECT * FROM fn_film_start_with_al()