-----*******************************************************
--Retrieve EmployeeID and DepartmentID, including departments without employees.
--the query s retrieve information about employees Id and their associated departments Id
--by performing a right join between the Employees and Departments tables 
--based on the common DepartmentID column.
-----*******************************************************
select e.EmployeeID,d.DepartmentID
from Employees e
right join Departments d on e.DepartmentID = d.DepartmentID