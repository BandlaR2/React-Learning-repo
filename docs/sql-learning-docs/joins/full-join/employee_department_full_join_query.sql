----******************************************************
--Retrieve EmployeeID and DepartmentName, including unmatched departments or employees.
--the query retrieves information about employees Id and their associated department Name
--by performing a full join between the Employees and Departments tables
--based on the common DepartmentID column
----******************************************************
select e.EmployeeID,d.DepartmentName
from Employees e
full join Departments d on e.DepartmentID = d.DepartmentID