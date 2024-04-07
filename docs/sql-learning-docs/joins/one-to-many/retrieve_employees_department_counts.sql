----********************************************
---Retrieve employees and their department names with counts, grouped by department.
---The query retrieves information about each department along with the count of employees in each department.
--It uses the JOIN clause to combine data from the Department and Employee tables
---based on the common DepartmentID column.
--The GROUP BY clause is applied to group the result set by the DepartmentName
----********************************************
select d.DepartmentName,count(d.DepartmentID)as Dep_Id
from Department as d
join Employee as e on d.DepartmentID=e.DepartmentID
group by d.DepartmentName