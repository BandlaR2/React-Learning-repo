-----*******************************************************
--- INNER JOIN
-----Retrieve the EmployeeID and DepartmentName for employees who are associated with a department.
---the query retrieves information about employees id and their associated departments name
---by performing an inner join between the Employees and Departments tables 
---based on the common DepartmentID column
-----*******************************************************

CREATE OR REPLACE FUNCTION fn_get_emp_depart_list_info()
RETURNS TABLE (EmployeeID INT, DepartmentName VARCHAR)
LANGUAGE plpgsql
AS $$
BEGIN
     RETURN QUERY
	 select e.EmployeeID,d.DepartmentName
     from Employees e
     inner join Departments d on e.DepartmentID = d.DepartmentID;
END;
$$;

SELECT * FROM fn_get_emp_depart_list_info();