----********************************************
---Retrieve employees Id and their department names.
---this query also retrieves information about employees Id and their department names.
---It uses the JOIN clause to combine data from the Department and Employee tables
---based on the common DepartmentID column.
----********************************************
select e.EmployeeID,d.DepartmentName
from Department as d
join Employee as e on d.DepartmentID=e.DepartmentID
