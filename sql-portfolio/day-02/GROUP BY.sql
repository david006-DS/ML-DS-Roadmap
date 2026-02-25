-- GROUP BY

SELECT *
FROM employee_demographics;

SELECT gender
FROM employee_demographics
GROUP BY gender
;

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender;

SELECT gender, MAX(age)
FROM employee_demographics
GROUP BY gender;

SELECT gender, MIN(age)
FROM employee_demographics
GROUP BY gender;

SELECT gender, COUNT(age)
FROM employee_demographics
GROUP BY gender;