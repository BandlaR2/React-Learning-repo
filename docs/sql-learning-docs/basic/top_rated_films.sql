--*******************************
--display the top 10 highest-rated films
--The query will retrives all columns(*) from 'film'table
--orders the results by the "rating" column in descending order (DESC),
--and it will select the top 10 films based on their ratings.
--**********************************
	select * 
	from film
	order by rating desc
	limit 10;