  ------*********************************************
---"Retrieve customer names and store_id for store_id=2, group by.
--This SQL query retrieves customer names and store_id for a specific store (store_id=2) 
--from the 'customer' and 'store' tables,
--grouping by customer names
------*********************************************

SELECT c.first_name, s.store_id store_count
FROM  customer AS c,store as s
where c.store_id= s.store_id
and s.store_id=2
GROUP BY c.first_name,s.store_id;