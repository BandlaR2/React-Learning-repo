----********************************************
---Retrieve employees and their department names with counts, grouped by department.
---The query retrieves information about each department along with the count of employees in each department.
--It uses the JOIN clause to combine data from the Department and Employee tables
---based on the common DepartmentID column.
--The GROUP BY clause is applied to group the result set by the DepartmentName
----********************************************

CREATE OR REPLACE FUNCTION fn_get_emp_dep_counts_info()
RETURNS TABLE(DepartmentName VARCHAR,EmployeeCOUNT BIGINT)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
	select d.DepartmentName,count(d.DepartmentID)as EmployeeCOUNT
    from Department d
    join Employee  e on d.DepartmentID=e.DepartmentID
    group by d.DepartmentName;
END;
$$;


SELECT * FROM fn_get_emp_dep_counts_info();
