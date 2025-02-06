-- 11. Miscellaneous
-- Ques 21: Use the LIKE operator to find all employees whose names contain the letter "e."
-- Ques 22: Find employees whose salaries are within the range 400.00 to 800.00.

-- Ques 21: Use the LIKE operator to find all employees whose names contain the letter "s".
USE employees;

SELECT *
FROM emp_data
WHERE emp_name LIKE '%s%';

-- Ques 22: Find employees whose salaries are within the range 40000 to 80000.

SELECT * 
FROM emp_data
WHERE salary BETWEEN 400.00 AND 800.00;