	
------*********************************************
----Retrieve film count per actor 
-----This query counts the number of films for each actor.
---by joining the 'actor' and 'film_actor' tables 
---based on the actor's ID
------*********************************************


	SELECT a.first_name, COUNT(film_actor.film_id) AS film_count
    FROM actor AS a,film_actor
    where a.actor_id=film_actor.actor_id
    GROUP BY a.first_name;