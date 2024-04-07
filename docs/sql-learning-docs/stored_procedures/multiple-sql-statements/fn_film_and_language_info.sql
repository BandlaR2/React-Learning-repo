---************************************************
---Retrieve highest film rating and language count
--retrieves max rating from 'film' and total language records. 
---************************************************
CREATE OR REPLACE FUNCTION fn_film_and_language_info()
RETURNS TABLE (
    max_film_rating mpaa_rating,
    language_count BIGINT
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT
        (SELECT MAX(rating) FROM film),
        (SELECT COUNT(*) FROM language);
END;
$$;


SELECT * FROM fn_film_and_language_info();