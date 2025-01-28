USE emp_demographics;

SELECT * FROM emp_detail;

-- SUBQUERIES IN SQL

SELECT emp_id, CONCAT(emp_first_name, ' ', emp_last_name) AS full_name, emp_salary
FROM emp_detail
WHERE emp_salary > (SELECT AVG(emp_salary) FROM emp_detail);

SELECT AVG(emp_age) FROM emp_detail;

SELECT emp_id, CONCAT(emp_first_name, ' ', emp_last_name) AS full_name, emp_age, emp_salary
FROM emp_detail
WHERE emp_age < (SELECT AVG(emp_age) FROM emp_detail); 

