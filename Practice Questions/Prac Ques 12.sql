-- 6. HAVING Clause
-- Ques 12: Find departments where the average salary of employees is greater than 400.00.

USE employees;

SELECT department, AVG(salary) AS avg_salary
FROM emp_data
GROUP BY department
HAVING avg_salary > 400.00;
