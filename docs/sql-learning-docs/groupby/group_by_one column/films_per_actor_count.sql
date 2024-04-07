--********************************************
--"How many films has each actor acted in?"
--The result will include two columns: 
-- actor_id and the corresponding film_count
--and it representing the number of films each actor has acted in.
--*************************************************	
SELECT actor_id,COUNT(film_id) AS film_count 
FROM film_actor 
GROUP BY actor_id
ORDER BY actor_id asc;
