/*SELECT 
	FirstName,
	LastName
FROM Sales.Customers

UNION

select 
	FirstName,
	LastName
from sales.Employees */

-- UNION
SELECT
FIRSTNAME,
LASTNAME
FROM SALES.Customers
UNION
SELECT 
FirstName,
LASTNAME
FROM SALES.EMPLOYEES

-- UNION ALL 
--Combine the data from employees and customers into one table, including duplicates.
/*SELECT 
FIRSTNAME,
LASTNAME
FROM SALES.Employees
UNION ALL 
SELECT 
FIRSTNAME,
LASTNAME
FROM SALES.Customers */

-- Find the employees who are not customers at the same time.
SELECT 
FIRSTNAME,
LASTNAME
FROM SALES.Employees
EXCEPT
SELECT 
FIRSTNAME,
LASTNAME
FROM SALES.Customers

-- Find the employees,  who are also customers.
SELECT 
FIRSTNAME,
LASTNAME
FROM SALES.Employees
INTERSECT
SELECT 
FIRSTNAME,
LASTNAME
FROM SALES.Customers





