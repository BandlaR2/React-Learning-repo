----******************************************************
---Retrieve EmployeeID, ProjectName, DepartmentName, and Salary Amount, including employees without projects or departments.
--This query retrieves information about employees, their associated projects, departments, and salary amounts.
-- It includes employees without projects or departments
--The LEFT JOIN ensures that all employees are included
--while the INNER JOIN ensures that only employees with salary information are included
----******************************************************

select e.EmployeeID,p.ProjectName,d.DepartmentName,s.Amount
from Employees e
left join Departments d on e.DepartmentID = d.DepartmentID
inner join salary s on e.EmployeeID =s.EmployeeID
left join Projects p on d.DepartmentID=p.DepartmentID