----**************************************
----How many stores have inventory for each of the first 10 films?"
---count the number of stores for each film_id in the "inventory" table
---grouping the results by film_id
---ordering them by film_id in ascending order
---limiting the output to the first 10 films.
----****************************************
SELECT film_id, COUNT(store_id) AS store_id
FROM inventory
GROUP BY film_id
ORDER BY film_id asc
LIMIT 10;