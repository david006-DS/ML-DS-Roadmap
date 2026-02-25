USE parks_and_recreation;
SELECT DATABASE();

SELECT * 
FROM employee_demographics;

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 30;

SELECT * 
FROM employee_demographics
ORDER BY age DESC
LIMIT 2, 1;

SELECT 
first_name, AVG(salary) AS avg_salary
FROM employee_salary
GROUP BY first_name
HAVING AVG(salary) > 30000
ORDER BY first_name DESC
;

SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal 
	ON dem.employee_id = sal.employee_id
;

SELECT dem.employee_id, age, occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal 
	ON dem.employee_id = sal.employee_id
;

-- OUTTER JOIN

SELECT dem.employee_id, age, occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal 
	ON dem.employee_id = sal.employee_id
;

-- SELF JOIN
SELECT *
FROM employee_salary emp1
JOIN employee_salary emp2
  ON emp1.employee_id + 1 = emp2.employee_id;  
  
SELECT -- Searching for duplicates
  a.employee_id,
  a.first_name
FROM employee_demographics a
JOIN employee_demographics b
  ON a.first_name = b.first_name
 AND a.employee_id <> b.employee_id;
 
 SELECT -- comparing salaries 
  a.employee_id AS emp_a,
  a.salary      AS salary_a,
  b.employee_id AS emp_b,
  b.salary      AS salary_b,
  a.dept_id
FROM employee_salary a
JOIN employee_salary b
  ON a.dept_id = b.dept_id
 AND a.salary > b.salary
 AND a.employee_id <> b.employee_id;
 
 SELECT emp1.employee_id AS emp_santa,
 emp1.first_name AS first_name_santa,
 emp1.last_name AS last_name_santa,
 emp2.employee_id AS emp_empl,
 emp2.first_name AS first_name_empl,
 emp2.last_name AS last_name_empl
 FROM employee_salary emp1
 JOIN employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id;
    
-- Multiple JOIN
SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments pd
	ON sal.dept_id = pd.department_id;
