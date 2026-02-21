-- 1. List all columns
SELECT * FROM employee_demographics;

SELECT * FROM employee_salary;

-- 2. List all  first names and last names
SELECT 
first_name, 
last_name 
FROM employee_demographics
;

-- 3. Find first_name whose age is 40
SELECT 
first_name, 
age
FROM employee_demographics 
WHERE age = 40
;

-- 4. Find all salary with the salary greater than 30000
SELECT
salary
FROM employee_salary
WHERE salary > 30000
;

-- 5. Find all people whose last name starts with 'S'
SELECT * 
FROM employee_demographics
WHERE last_name LIKE 'D__%';

-- 6. Find all age between 20 and 45
SELECT * 
FROM employee_demographics
WHERE age BETWEEN 20 AND 45;

-- 7. Find all employee_salary that is more than 20000
SELECT *
FROM employee_salary
WHERE salary > 20000
ORDER BY first_name;

-- 8. Find all employees between age 20 and 45 who are female
SELECT * 
FROM employee_demographics
WHERE age BETWEEN 20 AND 45
AND gender = 'Female'
;
-- 9. Find the 4 oldest employees, showing name and age
SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 4;

-- Find the 4 highest paid employees, showing name and salary
SELECT *
FROM employee_salary
ORDER BY salary DESC
LIMIT 4;