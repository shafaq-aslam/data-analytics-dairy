-- 8. Joins
-- Create the following additional table: departments:

-- dept_id	dept_name	manager_id	location
-- 1	  	HR			101			New York
-- 2		IT			102			San Francisco
-- 3		Marketing	103			Chicago
-- 4		Finance		104			Boston

-- Ques 15: Write a query to retrieve all employees along with their department names using an INNER JOIN.
-- Ques 16: Display a list of all departments, even if they don't have any employees, using a LEFT JOIN.
USE employees;

CREATE TABLE departments (
	dept_id INT PRIMARY KEY,
    dept_name VARCHAR(25),
    manager_id INT,
    location VARCHAR(50)
    );
    
INSERT INTO departments (dept_id, dept_name, manager_id, location)
VALUES (1, 'HR', 101, 'New York'),
	   (2, 'IT', 102, 'San Francisco'),
       (3, 'Marketing', 103, 'Chicago'),
       (4, 'Finance', 104, 'Boston');

-- Ques 15: Write a query to retrieve all employees along with their department names using an INNER JOIN.

SELECT emp_name, department 
FROM emp_data 
INNER JOIN departments
ON emp_data.department = departments.dept_name;

-- Ques 16: Display a list of all departments, even if they don't have any employees, using a LEFT JOIN.

SELECT departments.dept_name, emp_data.emp_name
FROM departments 
LEFT JOIN emp_data
ON emp_data.department = departments.dept_name;

SELECT * FROM departments;