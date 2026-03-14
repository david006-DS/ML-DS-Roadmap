-- Retrive all customers who are not from Ghana
SELECT * 
from customers 
WHERE country <> 'Ghana'

-- OR 

SELECT * 
FROM customers 
WHERE country != 'Ghana'

-- Retrive all customers with a score greater than Or less than 400
SELECT *
FROM customers
WHERE score > 400

SELECT *
FROM customers
WHERE score < 400

-- Retrive all customers with a score greater than or more  400
SELECT *
FROM customers
WHERE score >= 400

-- Logical Operator (AND, OR, NOT)
-- Retrive all customers who are from Ghana AND have a score more than 350
-- AND 

SELECT *
FROM customers
WHERE country = 'Ghana'
	AND score > 350

-- OR 
-- Retrive all customers who are from Ghana AND have a score more than 350
SELECT *
FROM customers
WHERE country = 'Ghana'
	OR score > 350


-- NOT 
-- Retrive all customers with a score not less than 300.
SELECT * 
FROM customers
WHERE NOT score  < 300

-- Range Operator (Between)
/* Retrive all customers whose score falls 
in the range between 500 and 899 */

SELECT * 
FROM customers 
WHERE SCORE BETWEEN 500 AND  899

-- OR 

SELECT * 
FROM customers 
WHERE SCORE >= 500 AND SCORE <= 899 

-- MEMBERSHIP OPERATOR (IN, NOT IN)
/* Retrive all customers from 
either Ghana or Nigeria. */

SELECT *
FROM customers 
WHERE country = 'Ghana' OR country = 'Nigeria' -- This is not right 

-- OR

SELECT *
FROM customers 
WHERE country IN ('Ghana','Nigeria') 

-- NOT IN 
SELECT *
FROM customers 
WHERE country NOT IN  ('Ghana','Nigeria') 

-- Search Operator  
/* Find all customer whose first name starts with 'D'*/

SELECT * 
FROM customers 
WHERE first_name LIKE '%D%' 
  
/* Find all customer whose first name starts with 'M'*/
SELECT * 
FROM customers 
WHERE first_name LIKE '%M' 

-- Find all customers whose first name contains 'r' 
SELECT * 
FROM customers 
WHERE first_name LIKE '%r'  

-- Find all customers whose first name has 'r' in the 3rd position
SELECT * 
FROM customers 
WHERE first_name LIKE '__r'

SELECT * 
FROM customers 
WHERE first_name LIKE 'a__'

SELECT * 
FROM customers 
WHERE first_name LIKE 'a%'
