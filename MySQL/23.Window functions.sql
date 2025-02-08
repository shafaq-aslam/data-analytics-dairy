USE employees;

SELECT * FROM emp_data;
SELECT * FROM departments;

-- WINDOW FUNCTIONS

SELECT emp_name, department, AVG(salary) OVER(PARTITION BY department)
FROM emp_data empd
JOIN departments dept
	ON empd.department = dept.dept_name;
