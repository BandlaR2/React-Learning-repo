---*********************************************
---"How many rentals handled by each staff member?"
---It retrieves the staff ID
---and the count of rentals handled by each staff member from the "rental" table,
---grouping the results by staff ID.
----*********************************************	
	select staff_id ,count(rental_id) as rental
	from rental
	group by staff_id