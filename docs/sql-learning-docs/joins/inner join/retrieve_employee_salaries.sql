----******************************************************
--Retrieve the first names of employees and their corresponding salary amounts.
-- the query retrieves information about employees first name and their salaries 
---by joining the Employees and Salary tables
-- based on the common EmployeeID column.
-----*******************************************************
select e.FirstName,s.Amount
from Employees e
inner join salary s on e.EmployeeID =s.EmployeeID
