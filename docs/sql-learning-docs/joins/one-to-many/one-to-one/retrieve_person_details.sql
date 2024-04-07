----*************************************************	
---Retrieve PersonID=1 details with address and placed orders information.
---this query retrieves information about a specific person 
---along with details about their address and orders.
---The WHERE clause ensures that only the rows related to the person with ID '1' are included in the result set.
----*************************************************	
select * from Person as p,Address as a,Orders as o
where p.PersonId ='1'
and o.PersonID=p.PersonID
and a.AddressID=p.AddressID
