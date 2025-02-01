-- 4. ORDER BY Clause
-- Ques 7: Display all employees sorted by their salary in descending order.
-- Ques 8: Sort employees by join_date and then by salary (ascending).

-- Ques 7: Display all employees sorted by their salary in descending order.
SELECT *
FROM emp_data
ORDER BY salary DESC;

-- Ques 8: Sort employees by join_date and then by salary (ascending).
SELECT *
FROM emp_data
ORDER BY join_date, salary ASC;