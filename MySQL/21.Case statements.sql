CREATE DATABASE emp_demographics;

USE emp_demographics;

CREATE TABLE emp_detail(
	emp_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_first_name VARCHAR(50),
    emp_last_name VARCHAR(50),
    emp_age INT,
    emp_salary INT
);

INSERT INTO emp_detail(emp_first_name, emp_last_name, emp_age, emp_salary)
VALUES('John', 'Kim', 30, 55000),
	  ('Harry', 'Potter', 29, 60000),
      ("Paul", "Devid", 45, 100000),
      ('Henry', 'Duke', 50, 200000),
      ('Shayan', 'Aslam', 24, 40000),
      ('Waqas', 'Latif', 29, 42000),
      ('Bela', 'John', 25, 35000),
      ('Michel', 'Jack', 40, 150000);
      
SELECT * FROM emp_detail;

-- CASE IN SQL

SELECT emp_first_name, emp_last_name, emp_age,
CASE
	WHEN emp_age BETWEEN 45 AND 50 THEN 'Old'
    WHEN emp_age >= 25 AND emp_age < 45 THEN 'Adult'
    WHEN emp_age < 25 THEN 'Young'
END AS emp_age_group
FROM emp_detail;