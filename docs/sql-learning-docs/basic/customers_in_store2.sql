---****************************************
---"How many customers in store ID 2?"
---counts the number of records in the "customer" table 
---where the "store_id" is equal to 2. 
---******************************************
select count(*)
from customer
where store_id=2;