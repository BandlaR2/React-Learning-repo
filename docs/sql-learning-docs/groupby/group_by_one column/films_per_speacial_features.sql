----*************************************
---"How many films available for each special feature?"
---counts the number of films for each distinct special_feature
---displays the result with two columns: 
---special_features and film_count
---It shows the count of films available for each special feature.
SELECT special_features, COUNT(film_id) AS film_count
FROM film
GROUP BY special_features;
