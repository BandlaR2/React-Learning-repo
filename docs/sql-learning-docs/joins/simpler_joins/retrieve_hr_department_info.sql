 select e.firstname,d.Departmentname
     from Employees e,Departments d 
	 where e.DepartmentID = d.DepartmentID
	 and d.departmentname='HR';