----*************************************************************
--"Show the number of films in each category, ordered by category_id in ascending order."
--retrieves the count of films in each category,
--groups the results by category_id
--and orders the output in ascending order based on category_id
----*************************************************************
	select category_id,count(film_id) as film
	from film_category
	group by category_id
	order by category_id asc ;
