----********************************************
---Retrieve all employees with their respective departments.
---query retrieves information about employees and their corresponding departments
--from the tables Employee and Department.
--The JOIN clause is used to combine rows from both tables
---based on the common DepartmentID column.
----********************************************
SELECT E.EmployeeID, E.FirstName, E.LastName, D.DepartmentName
FROM Employee as E
JOIN Department as D ON E.DepartmentID = D.DepartmentID;