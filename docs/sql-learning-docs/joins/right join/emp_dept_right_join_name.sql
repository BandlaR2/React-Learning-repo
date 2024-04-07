-----*******************************************************
--Retrieve EmployeeID and DepartmentName, including departments without employees.
--the query s retrieve information about employees Id and their associated departments Name
--by performing a right join between the Employees and Departments tables 
--based on the common DepartmentID column.
-----*******************************************************
select e.EmployeeID,d.DepartmentName
from Employees e
right join Departments d on e.DepartmentID = d.DepartmentID