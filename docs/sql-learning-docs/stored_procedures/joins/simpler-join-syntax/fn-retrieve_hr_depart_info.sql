----********************************************
---Retrieves Employee firstname and DepartmentName for HR department 
---this query also retrieves information about employees firstname and their department names.
---to combine data from the Department and Employee tables
---based on the common DepartmentID column.
----********************************************
CREATE OR REPLACE FUNCTION fn_retrieve_emp_dep_HR_info()
RETURNS TABLE (firstname varchar, Departmentname INT)
LANGUAGE plpgsql
AS $$
BEGIN
     RETURN QUERY
     select e.firstname,d.Departmentname
     from Employees e,Departments d 
	 where e.DepartmentID = d.DepartmentID
	 and d.departmentname='HR';
END;
$$;