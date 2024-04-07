	
SELECT * FROM fn_retrieve_emp_dep_info()
----********************************************
---Retrieve employees firstname and their department names.
---filename:fn_retrieve_emp_dep_info
SELECT * FROM fn_retrieve_emp_dep_info()
----********************************************

----********************************************
---Retrieves Employee firstname and DepartmentName for HR department 
---filename:fn_retrieve_emp_dep_HR_info
fn_retrieve_emp_dep_HR_info()
----********************************************

------*********************************************
---"Retrieve customer names and store_id for store_id=2, group by.
---filename:retrieve_customer_store_info
SELECT * FROM fn_get_store_count_by_customer();
------*********************************************

------*********************************************
----Retrieve film count per actor 
---filename:fn_get_film_count_by_actor()
SELECT * FROM fn_get_film_count_by_actor();
------*********************************************