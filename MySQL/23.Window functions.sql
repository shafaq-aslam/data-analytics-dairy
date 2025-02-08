USE employees;

SELECT * FROM emp_data;
SELECT * FROM departments;

DESC emp_data;
INSERT INTO emp_data
VALUES (11, 'Afsheen Ghuman', 'Finance', 670.25, CURRENT_DATE(), 3);

-- WINDOW FUNCTIONS

SELECT emp_name, department, AVG(salary) OVER(PARTITION BY department)
FROM emp_data empd
JOIN departments dept
	ON empd.department = dept.dept_name;
    
SELECT empd.emp_name, empd.department, empd.salary, SUM(salary)
OVER(PARTITION BY department ORDER BY empd.emp_id) AS Rolling_total
FROM emp_data empd
JOIN departments dept
	ON empd.department = dept.dept_name;
    
SELECT empd.emp_name, empd.department, empd.salary,
ROW_NUMBER() OVER() AS row_num
FROM emp_data empd
JOIN departments dept
	ON empd.department = dept.dept_name;
    
SELECT empd.emp_name, empd.department, empd.salary,
ROW_NUMBER() OVER(PARTITION BY department) AS row_num
FROM emp_data empd
JOIN departments dept
	ON empd.department = dept.dept_name;
    
SELECT empd.emp_name, empd.department, empd.salary,
ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) AS row_num
FROM emp_data empd
JOIN departments dept
	ON empd.department = dept.dept_name;
    
SELECT empd.emp_name, empd.department, empd.salary,
ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) AS row_num,
RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS rank_num
FROM emp_data empd
JOIN departments dept
	ON empd.department = dept.dept_name;
    
SELECT empd.emp_name, empd.department, empd.salary,
ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) AS row_num,
RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS rank_num,
DENSE_RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dense_rank_num
FROM emp_data empd
JOIN departments dept
	ON empd.department = dept.dept_name;
