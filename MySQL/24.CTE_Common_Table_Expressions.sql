USE employees;
SELECT * FROM departments, emp_data;

-- CTE

WITH CTE_example AS
(
SELECT department, AVG(salary) avg_sal, MAX(salary) max_sal, MIN(salary) min_sal, COUNT(salary) count_sal
FROM emp_data 
JOIN departments
ON emp_data.department = departments.dept_name
GROUP BY department
)
SELECT *
FROM CTE_example;
-- ****************************************
WITH CTE_example AS
(
SELECT department, AVG(salary) avg_sal, MAX(salary) max_sal, MIN(salary) min_sal, COUNT(salary) count_sal
FROM emp_data 
JOIN departments
ON emp_data.department = departments.dept_name
GROUP BY department
)
SELECT AVG(avg_sal)
FROM CTE_example;