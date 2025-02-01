-- 3. WHERE Clause
-- Ques 5: Retrieve the details of employees who joined after 2025-01-01.
-- Ques 6: Find all employees whose names start with the letter "A."

SELECT * FROM emp_data;

-- Ques 5: Retrieve the details of employees who joined after 2025-01-01.
SELECT * 
FROM emp_data
WHERE join_date > '2025-01-01';

-- Ques 6: Find all employees whose names start with the letter "A".
SELECT * 
FROM emp_data
WHERE emp_name LIKE 'A';


