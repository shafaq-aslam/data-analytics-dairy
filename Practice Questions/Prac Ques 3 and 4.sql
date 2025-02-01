-- 2. SELECT Queries
-- Ques 3: Retrieve all columns for employees who are in the "HR" department.
-- Ques 4: Retrieve emp_name and salary of employees who have a salary greater than 600.00.


USE employees;

-- Ques 3: Retrieve all columns for employees who are in the "HR" department.
SELECT * 
FROM emp_data
WHERE department = 'HR';

-- Ques 4: Retrieve emp_name and salary of employees who have a salary greater than 600.00.
SELECT emp_name, salary 
FROM emp_data
WHERE salary > 600.00;


