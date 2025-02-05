-- 10. Constraints
-- Ques 19: Modify the employees table to:
-- a. Add a constraint that ensures salary is greater than or equal to 30000.
-- b. Add a unique constraint on emp_name.
-- Ques 20: Try to insert duplicate emp_name into the table and observe the error.

-- Ques 19: Modify the employees table to:
-- a. Add a constraint that ensures salary is greater than or equal to 30000.
USE employees;

ALTER TABLE emp_data
ADD CONSTRAINT chk_monthly_pay CHECK (salary >= 650.25);

INSERT INTO emp_data (emp_id, emp_name, department, salary, join_date, experience_years)
VALUES (9, 'Arbaz khan', 'IT', 520.35, CURRENT_DATE(), 5); -- IT WILL SHOW ERROR

-- b. Add a unique constraint on emp_name.
ALTER TABLE emp_data
ADD CONSTRAINT
UNIQUE (emp_name);

INSERT INTO emp_data (emp_id, emp_name, department, salary, join_date, experience_years)
VALUES (11, 'Arbaz khan', 'IT', 660.35, CURRENT_DATE(), 5); -- IT WILL SHOW ERROR
