-- Multiple Joins
/* Using SalesDB, Retrieve a list of all orders, along
with the related customer, product, and employee details.
for each order, display: 
-Order Id
-Customer's name
-Product name 
-Sales amount
-Product price 
-Salesperson's name
*/
USE SalesDB

SELECT * 
FROM Sales.Orders AS o

SELECT 
	o.OrderID,
	o.Sales,
	c.FirstName,
	c.LastName,
	p.Product AS ProductName,
	p.price,
	e.FirstName AS Employee_FirstName,
	e.LastName AS Employee_LastName
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c
ON o.CustomerID = c.CustomerID
LEFT JOIN Sales.products  AS p 
ON o.ProductID = p.ProductID
LEFT JOIN Sales.Employees as e 
ON o.SalesPersonID = e.EmployeeID




