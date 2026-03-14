SELECT
OrderID,
OrderDate,
ShipDate,
CreationTime
FROM Sales.Orders

-- DATE & TIME Value
SELECT
OrderID,
CreationTime
From Sales.Orders

-- HardCoded
SELECT
OrderID,
CreationTime,
'2026-08-30' HardCoded
From Sales.Orders

-- GetDate() 
SELECT
OrderID,
CreationTime,
'2026-08-30' HardCoded,
GETDATE() Today
From Sales.Orders

SELECT 
OrderID,
CreationTime,
YEAR(CreationTime) Year,
MONTH(CreationTime) Month,
DAY(CreationTime) Day
FROM Sales.Orders

-- OR 
-- DATEPART
SELECT 
OrderID,
CreationTime,
DATEPART(year, CreationTime) Year_dp,
DATEPART(month, CreationTime) Month_dp,
DATEPART(day, CreationTime) Day_dp,
DATEPART(hour, CreationTime) Hour_dp,
DATEPART(quarter, CreationTime) Quarter_dp,
DATEPART(week, CreationTime) Week_dp
FROM Sales.Orders

-- DATENAME
SELECT 
OrderID,
CreationTime,
DATENAME(month, CreationTime) Month_Name,
DATENAME(WEEKDAY, CreationTime) Weekday_Name,
DATENAME(day, CreationTime) Day_Name
FROM Sales.Orders

-- DATETRUNC
SELECT 
OrderID,
CreationTime,
DATETRUNC(Year, CreationTime) Year_dt,
DATETRUNC(Day, CreationTime) Day_dt,
DATETRUNC(Minute, CreationTime) Minute_dt
FROM Sales.Orders

-- Tasks 
-- How many orders were placed each year?
SELECT
Year(OrderDate),
COUNT(*) NumOfOrders
FROM  Sales.Orders
Group By YEAR(OrderDate)

-- How many orders were placed each month?
SELECT
DATENAME(month, OrderDate) AS OrderDate,
COUNT(*) NumOfOrders
FROM  Sales.Orders
Group By DATENAME(month, OrderDate)

-- Show all orders that were placed during the month of February.
SELECT
*
FROM SALES.Orders

SELECT
*
FROM SALES.Orders
WHERE MONTH(OrderDate) = 2


SELECT 
OrderID,
CreationTime,
FORMAT(CreationTime, 'MM-dd-yyyy') USA_format,
FORMAT(CreationTime, 'dd') dd,
FORMAT(CreationTime, 'ddd') ddd,
FORMAT(CreationTime, 'dddd') dddd,
FORMAT(CreationTime, 'MM') MM,
FORMAT(CreationTime, 'MMM') MMM,
FORMAT(CreationTime, 'MMMM') MMMM
FROM Sales.Orders

-- Show CreationTime using the following format:
-- Day Wed Jan Q1 2025 12:34:56 PM

select 
orderid,
creationtime,
'Day ' + format(creationtime, 'dd MMM Q1 yyyy hh:mm:ss tt') CustomeFormat
from Sales.orders 

-- OR

SELECT 
OrderID,
CreationTime,
'Day ' + FORMAT(CreationTime, 'ddd MMM') +
' Q'+ DATENAME(quarter, CreationTime) + ' ' +
FORMAT (CreationTime, 'yyyy hh:mm:ss tt') AS CustomeFormat
FROM Sales.Orders

-- Format for aggregation
SELECT 
FORMAT(OrderDate, 'MMM yy') OrderDate,
COUNT(*) MonthCount
FROM Sales.Orders
GROUP BY FORMAT(OrderDate, 'MMM yy')

-- Data Standardization
-- CONVERT 
select 
CONVERT(int, '7828') AS [String To Integer Convert],
CONVERT(date, '2026-02-17') AS [String to Date Convert],
CreationTime,
CONVERT(Date, CreationTime) AS [DateTime to Date Convert]
from sales.orders 

-- Demonstrate conversion using CONVERT.
select 
CreationTime,
CONVERT(Date, CreationTime) AS [DateTime to Date Convert],
CONVERT(VARCHAR, CreationTime, 32) AS [US Std. Style:32],
CONVERT(VARCHAR, CreationTime, 34) AS [EURO Std. Style:34]
from sales.orders 

-- Convert data types using CAST.
select 
cast('123' AS INT) AS [String to Int],
cast(123 AS VARCHAR) as [int to string],
cast('2025-08-20' as Date) AS [String to date],
cast('2026-01-18' as DateTime) AS [String to Datetime],
CreationTime,
cast(CreationTime AS date) AS [Datetime to Date]
from sales.orders

select
orderID,
orderdate,
dateadd(day, -2, orderdate) as TwoDaysBefore,
dateadd(month, 3, orderdate) as Threeyearslater,
dateadd(year, 4, orderdate) as fouryearsahead
from sales.Orders

-- Calculate the age of employees
SELECT 
EmployeeID,
BirthDate,
datediff(year, BirthDate, Getdate()) Age
from Sales.Employees

-- Find the average shipping duration in days for each month.
 select 
 OrderID,
 OrderDate,
 ShipDate,
 DATEDIFF(day, OrderDate, ShipDate) Day2Ship
 from Sales.Orders

select 
Month(OrderDate) As OrderDate,
AVG(DATEDIFF(day, OrderDate, ShipDate)) AvgShip
from Sales.Orders
Group by Month(OrderDate)

-- Time Gap Analysis
-- Find the number of days between each order and the previous order
select
OrderID,
OrderDate CurrentOrderDate,
LAG(OrderDate) Over (Order By OrderDate) PreviousOrderDate,
DATEDIFF(day, LAG(OrderDate) Over (Order By OrderDate), OrderDate) NumofDays
From Sales.Orders

/* 
   Validate OrderDate using ISDATE and convert valid dates.
*/
SELECT
    OrderDate,
    ISDATE(OrderDate) AS IsValidDate,
    CASE 
        WHEN ISDATE(OrderDate) = 1 THEN CAST(OrderDate AS DATE)
    END AS NewOrderDate
FROM (
    SELECT '2025-08-20' AS OrderDate UNION
    SELECT '2025-08-21' UNION
    SELECT '2025-08-23' UNION
    SELECT '2025-08'
) AS t