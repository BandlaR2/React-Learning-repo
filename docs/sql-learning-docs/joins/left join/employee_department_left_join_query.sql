-----*******************************************************
---Retrieve EmployeeID and DepartmentName, including employees without a department.
--the query retrieves information about employees id and their associated department Name
---by performing a left join between the Employees and Departments tables 
--based on the common DepartmentID column.
-----*******************************************************

select e.EmployeeID,d.DepartmentName
from Employees e
left join Departments d on e.DepartmentID = d.DepartmentID
