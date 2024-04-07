----********************************************
--- Count the number of employees in a specific department (e.g., DepartmentID = 1).
--This query counts the number of employees in a specific departmentId
---using the COUNT function and a WHERE clause for filtering.
----********************************************
select count(e.DepartmentID) as emp_Id
from Employee as e
where e.DepartmentID=1;