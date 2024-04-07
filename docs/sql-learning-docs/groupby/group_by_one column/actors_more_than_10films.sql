----******************************************
----"List actors with over 3 films, count for each actor."
--retrieves the actor IDs and the count of films for each actor from the "film_actor" table
--considering only records where the film_id is greater than 10.
--results are then grouped by actor ID 
--and ordered by actor ID in ascending order.
----*******************************************
SELECT actor_id, COUNT(film_id) AS film_count
FROM film_actor
WHERE film_id > 10
GROUP BY actor_id
ORDER BY actor_id ASC;