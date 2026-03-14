INSERT INTO customers (id, first_name, country, score)
VALUES 
	(51, 'Kerli', 'USA', 786),
	(52, 'Michael', 'Canada', 812),
	(53, 'Linda', 'UK', 905),
	(54, 'Peter', 'Germany', 741),
	(55, 'Yara', 'Egypt', 669),
	(56, 'Hassan', 'UAE', 880),
	(57, 'Chisom', 'Nigeria', 592),
	(58, 'Nana', 'Ghana', 934),
	(59, 'Ivy', 'Kenya', NULL),
	(60, 'Samuel', 'South Africa', 705),
	(61, 'Adewale', 'Nigeria', 845),
	(62, 'Esi', 'Ghana', 610),
	(63, 'Mariam', 'Senegal', 778),
	(64, 'Omar', 'Morocco', 820),
	(65, 'Aline', 'Rwanda', 695),
	(66, 'Patrick', 'Ireland', 860),
	(67, 'Chloe', 'France', NULL),
	(68, 'Diego', 'Mexico', 799),
	(69, 'Min', 'South Korea', 910),
	(70, 'Lina', NULL, 735)


SELECT * FROM customers

-- Manual Entry (Values)
-- Copy data from 'customers' table into 'persons'
TRUNCATE TABLE persons;

INSERT INTO persons (id, person_name, birth_date, email, phone)
SELECT
  id,
  first_name,
  NULL,
  'Unknown',
  CAST(score AS VARCHAR(20))
FROM customers;

SELECT * FROM persons 

ALTER TABLE persons
DROP COLUMN phone;

SELECT * FROM persons 

-- Update
SELECT *
FROM customers 

/* Change the score of customer 58 to 0 */
UPDATE customers
SET score = 0
WHERE id = 67

SELECT *
FROM customers 

UPDATE customers 
SET country = 'Ghana'
WHERE id = 70

SELECT *
FROM customers 