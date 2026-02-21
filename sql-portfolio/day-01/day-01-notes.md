\# Day 1: SQL Basics — SELECT, WHERE, ORDER BY

\*\*Date:\*\* February 21, 2026

\*\*Hours Studied:\*\* 2.5

\*\*Problems Solved:\*\* 3/3



---



\## 📺 Tutorial Watched

\- \[x] Alex The Analyst — SQL Tutorial for Beginners (SELECT, FROM, WHERE)



---



\## What I Learned



\### SELECT — Choosing columns from a table

\- SELECT picks which columns to show

\- Use \* for all columns (but not recommended in real work)

\- DISTINCT removes duplicates



```sql

-- Basic select

SELECT first\_name, last\_name FROM employee\_demographics;



-- All columns

SELECT \* FROM employee\_demographics;



-- Only unique values

SELECT DISTINCT gender FROM employee\_demographics;

```



\### WHERE — Filtering rows

\- Filters data based on conditions

\- Can use =, !=, >, <, >=, <=

\- BETWEEN for ranges (includes both ends)

\- IN for matching a list of values

\- LIKE for patterns (% = anything, \_ = one character)

\- AND / OR to combine conditions



```sql

-- Exact match

SELECT \* FROM employee\_demographics WHERE gender = 'Female';



-- Greater than

SELECT \* FROM employee\_salary WHERE salary > 50000;



-- Range

SELECT \* FROM employee\_demographics WHERE age BETWEEN 20 AND 45;



-- List of values

SELECT \* FROM parks\_departments WHERE department\_name IN ('Parks', 'Finance');



-- Pattern matching

SELECT \* FROM employee\_demographics WHERE first\_name LIKE 'J%';

```



\### ORDER BY — Sorting results

\- ASC = smallest to largest (default)

\- DESC = largest to smallest

\- Can sort by multiple columns



```sql

-- Sort by age (oldest first)

SELECT \* FROM employee\_demographics ORDER BY age DESC;



-- Sort by last name A-Z

SELECT first\_name, last\_name FROM employee\_demographics ORDER BY last\_name ASC;



-- Sort by multiple columns

SELECT \* FROM employee\_demographics ORDER BY gender, age DESC;

```



---



\## 💻 Practice Queries I Wrote



```sql

--. Find the 4 oldest employees, showing name and age

SELECT \*

FROM employee\_demographics

ORDER BY age DESC

LIMIT 4;



-- Find the 4 highest paid employees, showing name and salary

SELECT \*

FROM employee\_salary

ORDER BY salary DESC

LIMIT 4;;



--  Find all employee\_salary that is more than 20000

SELECT \*

FROM employee\_salary

WHERE salary > 20000

ORDER BY first\_name;



-- Find employees aged 20-45

SELECT \*

FROM employee\_demographics

WHERE age BETWEEN 20 AND 45;



-- Find employees whose name starts with 'A'

SELECT first\_name, last\_name

FROM employee\_demographics

WHERE first\_name LIKE 'A%';

```



\## 🔑 Key Takeaways

\- WHERE filters rows BEFORE they are shown, ORDER BY sorts AFTER

\- BETWEEN includes both ends (20 AND 45 means 20 and 45 are included)

\- LIKE with % is powerful for searching text patterns

\- Always use column names in SELECT instead of \* in real projects



\## ❌ What Was Confusing

\- (Write anything that was hard or unclear for you today)

\- (Example: "I wasn't sure when to use LIKE vs IN")

\- (Example: "ORDER BY with multiple columns was tricky at first")



\## ✅ Day 1 Checklist

\- \[x] Watched Alex The Analyst tutorial

\- \[x] Wrote 15+ practice queries

\- \[x] Solved 3 DataLemur problems

\- \[x] Pushed files to GitHub



\## 📅 Adjusted Schedule

Due to setup and preparation taking longer than expected, I'm compressing Days 1-5 into Feb 19-22 to catch up. Starting Feb 23, 2026 (Sunday), I'll follow the roadmap schedule exactly as planned — one day per day, no rushing.



\*\*Catch-Up Plan:\*\*

\- Feb 19-20: Day 1 (SELECT, WHERE, ORDER BY) ✅

\- Feb 21: Day 2 (GROUP BY, Aggregates)

\- Feb 22: Day 3 (JOINs)

\- Feb 23 onward: Follow the roadmap on schedule

