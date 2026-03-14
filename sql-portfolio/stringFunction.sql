 -- String function
-- Concatenate first name and country into one column.
select 
	firstname,
	country,
	concat(firstname, ' ', country) AS Village_Name,
	lower(country) as low_country,
	upper(FirstName) as up_name
from sales.Customers  

-- The above used a different database called Sales.

SELECT *
FROM customers 

/* Find customers whose first name contains leading or
trailing spaces */
-- TRIM
Select 
	first_name,
	len(first_name) len_name,
	len(trim(first_name)) len_trim_name
From customers
-- OR 
SELECT 
	FIRST_NAME
FROM customers
WHERE first_name != TRIM(first_name)

--REPLACE
SELECT 
'025-767-6157' AS contact,
replace('025-767-6157', '-', '') AS new_contact

-- Replace File Extence from txt to csv.
SELECT 
'report.txt' AS old_filename,
REPLACE('report.txt', '.txt', '.csv') AS new_filename

-- Retrieve the first two characters of each first name.
SELECT
	first_name,
	LEFT(TRIM(first_name), 2) AS first_2_Char
FROM customers

-- Retrieve the last two characters of each first name.
SELECT
	first_name,
	RIGHT(TRIM(first_name), 2) AS last_2_Char
FROM customers


--SUBSTRING
-- Retrieve a list of customers' first names after removing the first character.

SELECT
	first_name,
	SUBSTRING(TRIM(first_name), 2, LEN(first_name)) AS sub_name
FROM customers