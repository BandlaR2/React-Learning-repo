----********************************************
---Retrieve employees Id and their department names, ordered by department name.
---this query also retrieves information about employees Id and their department names.
---It uses the JOIN clause to combine data from the Department and Employee tables
---based on the common DepartmentID column.
-- ORDER BY clause to sort the result set by the department name in ascending order.
----********************************************

select e.EmployeeID,d.DepartmentName
from Department as d
join Employee as e on d.DepartmentID=e.DepartmentID
order by d.DepartmentName