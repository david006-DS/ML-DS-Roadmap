SELECT *
FROM orders;


INSERT INTO orders (order_id, customer_id, order_date, sales)
VALUES
	(1005, 7, '2021-09-01', 57)

INSERT INTO dbo.orders (order_id, customer_id, order_date, sales)
VALUES
	(1005, 7, '2021-09-01', 57),
  (1006, 8, '2021-09-08', 106),
  (1007, 9, '2021-09-15', 126),
  (1008, 10, '2021-09-22', 146),
  (1009, 11, '2021-09-29', 16),
  (1010, 12, '2021-10-06', 36),
  (1011, 14, '2021-10-13', 69),
  (1012, 15, '2021-10-20', 89),
  (1013, 16, '2021-10-27', 109),
  (1014, 17, '2021-11-03', 129),
  (1015, 18, '2021-11-10', 149),
  (1016, 20, '2021-11-17', 32),
  (1017, 21, '2021-11-24', 52),
  (1018, 22, '2021-12-01', 72),
  (1019, 23, '2021-12-08', 92),
  (1020, 25, '2021-12-15', 125),
  (1021, 26, '2021-12-22', 145),
  (1022, 27, '2021-12-29', 15),
  (1023, 28, '2022-01-05', 35),
  (1024, 29, '2022-01-12', 55),
  (1025, 31, '2022-01-19', 88),
  (1026, 32, '2022-01-26', 108),
  (1027, 33, '2022-02-02', 128),
  (1028, 35, '2022-02-09', 11),
  (1029, 36, '2022-02-16', 31),
  (1030, 37, '2022-02-23', 51),
  (1031, 38, '2022-03-02', 71),
  (1032, 40, '2022-03-09', 104),
  (1033, 41, '2022-03-16', 124),
  (1034, 42, '2022-03-23', 144),
  (1035, 43, '2022-03-30', 14),
  (1036, 44, '2022-04-06', 34),
  (1037, 46, '2022-04-13', 67),
  (1038, 47, '2022-04-20', 87),
  (1039, 48, '2022-04-27', 107),
  (1040, 49, '2022-05-04', 127),
  (1041, 50, '2022-05-11', 147),
  (1042, 51, '2022-05-18', 17),
  (1043, 52, '2022-05-25', 37),
  (1044, 53, '2022-06-01', 57),
  (1045, 54, '2022-06-08', 77),
  (1046, 55, '2022-06-15', 97),
  (1047, 56, '2022-06-22', 117),
  (1048, 57, '2022-06-29', 137),
  (1049, 58, '2022-07-06', 7),
  (1050, 59, '2022-07-13', 27),
  (1051, 60, '2022-07-20', 47),
  (1052, 61, '2022-07-27', 67),
  (1053, 62, '2022-08-03', 87),
  (1054, 63, '2022-08-10', 107),
  (1055, 64, '2022-08-17', 127),
  (1056, 65, '2022-08-24', 147),
  (1057, 66, '2022-08-31', 17),
  (1058, 67, '2022-09-07', 37),
  (1059, 68, '2022-09-14', 57),
  (1060, 69, '2022-09-21', 77),
  (1061, 70, '2022-09-28', 97);

SELECT order_id, customer_id, order_date, sales
FROM dbo.orders
ORDER BY order_id;

DELETE FROM dbo.orders
WHERE order_id >= 1005;

INSERT INTO dbo.orders (order_id, customer_id, order_date, sales)
VALUES
	(1005, 7, '2021-09-01', 57),
  (1006, 8, '2021-09-08', 106),
  (1007, 9, '2021-09-15', 126),
  (1008, 10, '2021-09-22', 146),
  (1009, 11, '2021-09-29', 16),
  (1010, 12, '2021-10-06', 36),
  (1011, 14, '2021-10-13', 69),
  (1012, 15, '2021-10-20', 89),
  (1013, 16, '2021-10-27', 109),
  (1014, 17, '2021-11-03', 129),
  (1015, 18, '2021-11-10', 149),
  (1016, 20, '2021-11-17', 32),
  (1017, 21, '2021-11-24', 52),
  (1018, 22, '2021-12-01', 72),
  (1019, 23, '2021-12-08', 92),
  (1020, 25, '2021-12-15', 125),
  (1021, 26, '2021-12-22', 145),
  (1022, 27, '2021-12-29', 15),
  (1023, 28, '2022-01-05', 35),
  (1024, 29, '2022-01-12', 55),
  (1025, 31, '2022-01-19', 88),
  (1026, 32, '2022-01-26', 108),
  (1027, 33, '2022-02-02', 128),
  (1028, 35, '2022-02-09', 11),
  (1029, 36, '2022-02-16', 31),
  (1030, 37, '2022-02-23', 51),
  (1031, 38, '2022-03-02', 71),
  (1032, 40, '2022-03-09', 104),
  (1033, 41, '2022-03-16', 124),
  (1034, 42, '2022-03-23', 144),
  (1035, 43, '2022-03-30', 14),
  (1036, 44, '2022-04-06', 34),
  (1037, 46, '2022-04-13', 67),
  (1038, 47, '2022-04-20', 87),
  (1039, 48, '2022-04-27', 107),
  (1040, 49, '2022-05-04', 127),
  (1041, 50, '2022-05-11', 147),
  (1042, 51, '2022-05-18', 17),
  (1043, 52, '2022-05-25', 37),
  (1044, 53, '2022-06-01', 57),
  (1045, 54, '2022-06-08', 77),
  (1046, 55, '2022-06-15', 97),
  (1047, 56, '2022-06-22', 117),
  (1048, 57, '2022-06-29', 137),
  (1049, 58, '2022-07-06', 7),
  (1050, 59, '2022-07-13', 27),
  (1051, 60, '2022-07-20', 47),
  (1052, 61, '2022-07-27', 67),
  (1053, 62, '2022-08-03', 87),
  (1054, 63, '2022-08-10', 107),
  (1055, 64, '2022-08-17', 127),
  (1056, 65, '2022-08-24', 147),
  (1057, 66, '2022-08-31', 17),
  (1058, 67, '2022-09-07', 37),
  (1059, 68, '2022-09-14', 57),
  (1060, 69, '2022-09-21', 77),
  (1061, 70, '2022-09-28', 97);

SELECT COUNT(*) AS customers_count FROM dbo.customers;
SELECT COUNT(*) AS orders_count    FROM dbo.orders;

SELECT *
FROM customers;

SELECT *
FROM orders;

UPDATE dbo.customers
SET score = 0
where score IS NULL;

SELECT* 
FROM customers;

/* Get all customers along with their orders, 
but only for customers who have placed an order */

SELECT *
FROM customers
	INNER JOIN orders
	ON id = customer_id

SELECT 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
	INNER JOIN orders AS o
	ON c.id = o.customer_id;

/*  Get all customers along with their orders, 
including those without orders. */ -- LEFT JOIN
SELECT 
	c.id,
	c.first_name,
	o.order_id, 
	o.sales
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id

-- Right JOIN
/*  Get all customers along with their orders, 
including orders without matching customers. */
SELECT 
	c.id,
	c.first_name,
	o.order_id, 
	o.sales
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id

-- Get all customers and all orders even if there's no match. 
SELECT 
	c.id,
	c.first_name,
	o.order_id, 
	o.sales
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id

-- LEFT ANTI JOIN
-- Get all customers who haven't placed any order
SELECT * 
FROM customers AS c
LEFT JOIN orders AS o 
ON c.id = o.customer_id
WHERE o.customer_id IS NULL

-- who have not placed any orders 
SELECT * 
FROM customers AS c
LEFT JOIN orders AS o 
ON c.id = o.customer_id
WHERE o.customer_id IS NULL

-- RIGHT ANTI JOIN
SELECT * 
FROM customers AS c
RIGHT JOIN orders AS o 
ON c.id = o.customer_id
-- WHERE o.customer_id IS NULL

SELECT * 
FROM customers AS c
RIGHT JOIN orders AS o 
ON c.id = o.customer_id
WHERE c.id IS NULL

-- Get all orders without matching customers using  LEFT JOIN
SELECT * 
FROM orders AS o
LEFT JOIN customers AS c
ON c.id = o.customer_id 
WHERE c.id IS NULL

-- Full Join 
-- Find customers without orders and orders without customers.
SELECT * 
FROM orders AS o
FULL JOIN customers AS c
ON c.id = o.customer_id 
WHERE c.id IS NULL 
	OR o.customer_id IS NULL

/* Get all customers along with their orders,
but only for customers who have placed an order. WITHOUT USING INNER JOIN*/

select * 
from customers as c
left join orders as o
on c.id = o.customer_id 

select * 
from customers as c
left join orders as o
on c.id = o.customer_id 
where o.customer_id is not null

-- CROSS JOIN
-- Generate all possible combination of customers and orders. */
SELECT *
FROM customers
CROSS JOIN orders 

