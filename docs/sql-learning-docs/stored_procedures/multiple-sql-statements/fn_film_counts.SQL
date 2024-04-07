---************************************************	
---Retrieve film_actor and film records counts with fn_film_counts.
---This function is defined to return a set of rows with columns 
---corresponding to the counts of film_actor and film. 
---************************************************
CREATE OR REPLACE FUNCTION fn_film_counts()
RETURNS TABLE (
    film_actor_count BIGINT,
    film_count BIGINT
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT
        (SELECT COUNT(film_id) FROM film_actor),
        (SELECT COUNT(*) FROM film);
END;
$$;


SELECT * FROM fn_film_counts();