SELECT * 
FROM employee_demographics;

SELECT first_name, last_name
FROM employee_demographics
UNION 
SELECT first_name, last_name
FROM employee_salary;

SELECT first_name, last_name, 'Old Man' AS Lable
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION 
SELECT first_name, last_name, 'Old Lady' AS Lable
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION 
SELECT first_name, last_name, 'Well Paid Staff' AS Lable
FROM employee_salary 
WHERE salary > 65000
ORDER BY first_name, last_name
;