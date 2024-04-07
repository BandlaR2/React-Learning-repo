-----*******************************************************
---Left join
---Retrieve EmployeeID and DepartmentName, including employees without a department.
--the query retrieves information about employees id and their associated department Name
---by performing a left join between the Employees and Departments tables 
--based on the common DepartmentID column.
-----*******************************************************

select e.EmployeeID,d.DepartmentName
from Employees e
left join Departments d on e.DepartmentID = d.DepartmentID

CREATE OR REPLACE FUNCTION fn_get_emp_depart_left_join_info()
RETURNS TABLE (EmployeeID INT, DepartmentName VARCHAR)
LANGUAGE plpgsql
AS $$
BEGIN
     RETURN QUERY
     select e.EmployeeID,d.DepartmentName
     from Employees e
     left join Departments d on e.DepartmentID = d.DepartmentID;
END;
$$;

SELECT * FROM fn_get_emp_depart_left_join_info()