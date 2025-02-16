USE employees;
SELECT * FROM emp_data;

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

-- *******************************

WITH CTE_example1 AS
(
SELECT emp_id, emp_name, department, salary, experience_years
FROM emp_data 
WHERE salary > 655.00
),
CTE_example2 AS
(
SELECT emp_name, salary, experience_years
FROM emp_data
WHERE experience_years > 3
)
SELECT *
FROM CTE_example2;

-- ******************