---****************************************************
---"How many films in each rental duration, sorted in ascending order?"
---- count of films for each rental duration from the "film" table,
----groups the results by rental_duration,
----orders the output in ascending order based on rental_duration.
----****************************************************
   select rental_duration,count (film_id) as film
	from film
	group by rental_duration
	order by  rental_duration asc;
	