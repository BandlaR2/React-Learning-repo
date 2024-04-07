----***************************************************	
-----"How many films belong to each category in ascending order?"
--retrieves the number of films in each category from the "film_category" table.
---grouping the results by category ID
---ordering them in ascending order
----***************************************************	
	select category_id,count(*)
	from film_category
	group by category_id
	order by category_id asc;