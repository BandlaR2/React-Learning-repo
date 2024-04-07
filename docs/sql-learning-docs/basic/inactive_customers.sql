---****************************************
--"Retrieve all information about customers who are inactive?"
--selecting all columns from the "customer" table
--where the "active" column has a value of 0.
---*****************************************
select *
from customer
where active=0;