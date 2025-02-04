-- 9. Aggregate Functions
-- Ques 17: Find the maximum salary of employees in the "Finance" department.
-- Ques 18: Calculate the total number of employees in the company.

-- Ques 17: Find the maximum salary of employees in the "Finance" department.

SELECT department, MAX(salary) AS max_sal
FROM emp_data
WHERE department = 'Finance';

-- Ques 18: Calculate the total number of employees in the company.

SELECT COUNT(emp_id) AS total_emp
FROM emp_data;