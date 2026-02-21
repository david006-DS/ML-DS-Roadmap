-- Ascending (default)
SELECT first_name, last_name FROM employee_demographics ORDER BY last_name ASC;

-- Descending
SELECT first_name, salary FROM employee_salary ORDER BY salary DESC;

-- Multiple columns (sort by first, then second)
SELECT first_name, last_name FROM employee_demographics
ORDER BY last_name ASC, first_name ASC;

-- Order by column position (not recommended but useful to know)
SELECT first_name, last_name, age FROM employee_demographics ORDER BY 3 DESC;