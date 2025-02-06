-- 5. GROUP BY Clause with Aggregate Functions
-- Quest 9: Find the total salary paid to employees in each department.
-- Quest 10: Find the average salary of employees with at least 5 years of experience.
-- Quest 11: Count the number of employees in each department.

USE employees;

-- Quest 9: Find the total salary paid to employees in each department.

SELECT department, SUM(salary) AS total_paid
FROM emp_data
GROUP BY department;

-- Quest 10: Find the average salary of employees with at least 5 years of experience.

SELECT AVG(salary) AS avg_salary
FROM emp_data
WHERE experience_years >= 5;

-- Quest 11: Count the number of employees in each department.
SELECT department, COUNT(emp_id) AS total_emp
FROM emp_data
GROUP BY department;