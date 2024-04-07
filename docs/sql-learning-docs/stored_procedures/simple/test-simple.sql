

----**************************************************
---Filename: fn_active_customers.sql
---"Retrieve all information about customers who are inactive?"
SELECT * FROM fn_inactive_customers();
----**************************************************


----*********************************************************
----"How many records exist in the film_actor table?"
SELECT * FROM fn_count_film_actor();
--FileName:fn_count_film_actor.sql
----**********************************************************


------********************************************
---"Retrieve films with titles starting with 'Al'?"	
--FileName:fn_film_start_with_al.sql
SELECT * FROM fn_film_start_with_al()
-------***********************************************

----*****************************************
--List unique district present in the address table
--FileName:fn_distinct_address
SELECT * FROM fn_distinct_address();
--*****************************************


----******************************************************
--FULL JOIN EXAMPLE
--Retrieve EmployeeID and DepartmentName, including unmatched departments or employees.
--FileName:fn_get_emp_depart_info
SELECT * FROM fn_get_emp_depart_info();
----******************************************************



-----*******************************************************
--- INNER JOIN
-----Retrieve the EmployeeID and DepartmentName for employees who are associated with a department.
--FileName:fn_get_emp_depart_list_info
SELECT * FROM fn_get_emp_depart_list_info();
-----*******************************************************

-----*******************************************************
---Left join
---Retrieve EmployeeID and DepartmentName, including employees without a department.
--FileName:fn_get_emp_depart_left_join_info
SELECT * FROM fn_get_emp_depart_left_join_info();
-----*******************************************************



-----*******************************************************
--Retrieve EmployeeID and DepartmentID, including departments without employees.
--FileName:fn_get_emp_dep_right_join_id_info
SELECT * FROM fn_get_emp_dep_right_join_id_info();
-----*******************************************************

----********************************************
---Retrieve employees and their department names with counts, grouped by department.
---The query retrieves information about each department along with the count of employees in each department.
----FileName:fn_get_emp_dep_counts_info
SELECT * FROM fn_get_emp_dep_counts_info();
----********************************************


----********************************************
---Retrieve employees and their department names with counts, grouped by department.
---The query retrieves information about each department along with the count of employees in each department.
----FileName:fn_get_emp_dep_counts_info
SELECT * FROM fn_get_emp_dep_counts_info();
----********************************************

----********************************************
---Retrieve employees Id and their department names, ordered by department name.
----FileName:fn_get_emp_dep_orderby_info
SELECT * FROM fn_get_emp_dep_orderby_info();
--********************************************

---***************************************************
--Retrieve distinct combinations of product and region
----FileName:n_distinct_product_region_info
SELECT * FROM fn_distinct_product_region_info();
---***************************************************	

---***************************************************	
--Retrieve the maximum revenue for each region
----FileName:fn_max_revenue_region
SELECT * FROM fn_max_revenue_region();
---***************************************************	

---***************************************************	
---Retrieve total revenue for each combination of product and region
----FileName:fn_total_revenue_product_region_info
SELECT * FROM fn_total_revenue_product_region_info();
---***************************************************	

---************************************************	
---Retrieve film_actor and film records counts with fn_film_counts.
----FileName:fn_film_counts
SELECT * FROM fn_film_counts();
---************************************************

---************************************************
---Retrieve highest film rating and language count
----FileName:fn_film_and_language_info()
SELECT * FROM fn_film_and_language_info();
---************************************************

---*************************************************************
----How to insert staff data with given details into the database by using function
FileName:fn_insert_staff
---***************************************************************************

---*************************************************************
---Update staff_id from 4 to 3 for a specific staff member by using function.
FileName:fn_update_staff_id
---*************************************************************

----***********************************************************************
---How to insert new values into the "store" table by using function
FileName:fn_insert_store_values
----***********************************************************************

----***********************************************************************
--How to update the address_id for a store by using function
FileName:fn_update_store_address
----***********************************************************************