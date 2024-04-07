----********************************************
---Retrieve employees firstname and their department names.
---this query also retrieves information about employees firstname and their department Id.
--- to combine data from the Department and Employee tables
---based on the common DepartmentID column.
----********************************************
select e.firstname,d.DepartmentID
     from Employees e,Departments d 
	 where e.DepartmentID = d.DepartmentID;