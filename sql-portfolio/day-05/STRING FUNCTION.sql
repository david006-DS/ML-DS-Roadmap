-- STRINGS FUNCTION 
SELECT LENGTH('david');

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2;

SELECT UPPER('kofi');
SELECT LOWER('DAVID');

SELECT first_name, UPPER(first_name)
FROM employee_demographics;

-- TRIM 
SELECT TRIM('     DAVID      ');

SELECT 
first_name, LEFT(first_name, 3),
RIGHT(first_name, 3),
SUBSTRING(first_name, 3, 2),
birth_date,
SUBSTRING(birth_date, 6, 2) AS birth_month
FROM employee_demographics;

