
----****************************************************
---"How many films have lengths between 50 and 100 minutes?"
---counts the number of records in the "film" table
--where the "length" column falls within the range of 50 to 100.
----********************************************************	
	select count(*)
	from film
	where length between 50 and 100