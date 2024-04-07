
------********************************************
---"Retrieve films with titles starting with 'Al'?"	
---query retrieves all columns from the "film" table 
---where the "title" column starts with "Al" 
-------***********************************************
	select *
	from film
	where title like 'AL%'