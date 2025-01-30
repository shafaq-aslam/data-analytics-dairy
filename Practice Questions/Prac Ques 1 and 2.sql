# Table Creation and Insertion
# Ques: 01 -- Create a table employees with the following columns:

#  emp_id (integer, primary key)
#  emp_name (varchar, not null)
#  department (varchar)
#  salary (decimal with precision 7,2)
#  join_date (date)
#  experience_years (integer, default is 0).

# Ques: 2 -- Insert at least 10 records into the employees table with realistic data.

CREATE DATABASE employees;
USE employees;

CREATE TABLE emp_data (
	emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(7, 2),
    join_date DATE,
    experience_years INT DEFAULT 0
);

INSERT INTO emp_data (emp_id, emp_name, department, salary, join_date)
VALUES (001, 'Shayan Aslam', 'Finance', 650.25, CURRENT_DATE()), 
	   (002, 'Waqas Abdul Latif', 'IT', 550.25, CURRENT_DATE()),
       (003, 'Rohit Kumar', 'IT', 560.02, CURRENT_DATE()),
       (004, 'Muzammil', 'Marketing', 660.15, CURRENT_DATE()),
       (005, 'Subhan Liaqat', 'IT', 750.23, CURRENT_DATE()),
       (006, 'Shafaq Aslam', 'IT', 649.36, CURRENT_DATE()),
       (007, 'Wajiha', 'Finance', 670.25, CURRENT_DATE()),
       (008, 'Maria Salman', 'HR', 870.25, CURRENT_DATE()),
       (009, 'Fakhra Farhat', 'HR', 860.25, CURRENT_DATE()),
       (010, 'Salman Khan', 'Marketing', 650.25, CURRENT_DATE());
       