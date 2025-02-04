-- 7. UPDATE and DELETE
-- Ques 13: Increase the salary of all employees in the "IT" department by 10%.
-- Ques 14: Delete employees who have less than 2 years of experience.

USE employees;

-- Ques 13: Increase the salary of all employees in the "IT" department by 10%.
DESC emp_data; -- TO CHECK COLUMNS DATA TYPE

SET SQL_SAFE_UPDATES = 0;

ALTER TABLE emp_data MODIFY salary DECIMAL(10,2);

UPDATE emp_data
SET salary = ROUND(salary*1.10, 2) -- TO AVOID TRUNCATE ERROR
WHERE department = 'IT';

SET SQL_SAFE_UPDATES = 1;

SELECT *
FROM emp_data;

-- Ques 14: Delete employees who have less than 2 years of experience.

SET SQL_SAFE_UPDATES = 0;

DELETE FROM emp_data
WHERE experience_years < 2;