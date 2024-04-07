------*********************************************
----Retrieve film count per actor by using function
-----This query counts the number of films for each actor.
---by joining the 'actor' and 'film_actor' tables 
---based on the actor's ID
------*********************************************
CREATE OR REPLACE FUNCTION fn_get_film_count_by_actor()
RETURNS TABLE (first_name VARCHAR, film_count BIGINT)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT a.first_name, COUNT(film_actor.film_id) AS film_count
    FROM actor AS a,film_actor
    where a.actor_id = film_actor.actor_id
    GROUP BY a.first_name;
END;
$$;