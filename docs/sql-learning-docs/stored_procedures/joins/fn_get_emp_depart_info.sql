----******************************************************
--FULL JOIN EXAMPLE
--Retrieve EmployeeID and DepartmentName, including unmatched departments or employees.
--the query retrieves information about employees Id and their associated department Name
--by performing a full join between the Employees and Departments tables
--based on the common DepartmentID column
----******************************************************


CREATE OR REPLACE FUNCTION fn_get_emp_depart_info()
RETURNS TABLE (EmployeeID INT, DepartmentName VARCHAR)
LANGUAGE plpgsql
AS $$
BEGIN
   RETURN QUERY
   SELECT e.EmployeeID, d.DepartmentName
   FROM Employees e
   FULL JOIN Departments d ON e.DepartmentID = d.DepartmentID;
END;
$$;
SELECT * FROM fn_get_emp_depart_info();