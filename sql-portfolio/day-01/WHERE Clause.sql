SELECT * 
FROM employee_demographics;

-- Exact match
SELECT first_name FROM employee_demographics WHERE first_name = 'Tom';

-- Not equal
SELECT first_name, age FROM employee_demographics WHERE age != '45';
SELECT first_name, gender, age FROM employee_demographics WHERE age <> '40';

-- Comparison operators (>, <, >=, <=)
SELECT first_name, age FROM employee_demographics WHERE age > 30;
SELECT first_name, salary FROM employee_salary WHERE salary >= 30000;

-- BETWEEN (inclusive range)
SELECT first_name, salary FROM employee_salary
WHERE salary BETWEEN 30000 AND 70000;

-- IN (match any value in a list)
SELECT salary, first_name FROM employee_salary
WHERE salary IN ('20000', '50000', '70000');

-- LIKE (pattern matching)
-- % = any number of characters
-- _ = exactly one character
SELECT first_name FROM employee_demographics WHERE first_name LIKE 'J%';      -- starts with J
SELECT first_name FROM employee_demographics WHERE first_name LIKE '%a';       -- ends with a
SELECT first_name FROM employee_demographics WHERE first_name LIKE '_o%';      -- second letter is o
SELECT first_name FROM employee_demographics WHERE first_name ILIKE 'john%';   -- case-insensitive (PostgreSQL)

-- IS NULL / IS NOT NULL
SELECT * 
FROM parks_departments;


SELECT * FROM parks_departments WHERE department_name IS NULL;

SELECT * 
FROM employee_demographics;

SELECT * FROM employee_demographics WHERE birth_date IS NOT NULL;

-- AND / OR / NOT (combining conditions)
SELECT first_name, gender, age FROM employee_demographics
WHERE gender = 'Female' AND age > 25;

SELECT first_name, gender, age FROM employee_demographics
WHERE gender = 'Female' OR age > 25;

SELECT first_name, gender, age FROM employee_demographics
WHERE NOT gender = 'Female' AND age > 25;