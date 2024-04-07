-----*******************************************************
--Retrieve EmployeeID and DepartmentID, including departments without employees.
--the query s retrieve information about employees Id and their associated departments Id
--by performing a right join between the Employees and Departments tables 
--based on the common DepartmentID column.
-----*******************************************************


CREATE OR REPLACE FUNCTION fn_get_emp_dep_right_join_id_info()
RETURNS TABLE (EmployeeID INT, DepartmentID INT)
LANGUAGE plpgsql
AS $$
BEGIN
     RETURN QUERY
     select e.EmployeeID,d.DepartmentID
     from Employees e
     right join Departments d on e.DepartmentID = d.DepartmentID;
END;
$$;



SELECT * FROM fn_get_emp_dep_right_join_id_info();