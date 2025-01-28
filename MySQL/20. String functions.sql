-- String function

USE empdata;

-- SUBSTRING
SELECT emp_first_name, SUBSTRING(emp_first_name, 2, LENGTH(emp_first_name)-2)
AS SHORT_NAME
FROM empdetail;

SELECT emp_first_name, LEFT(emp_first_name, 2) AS SHORT_NAME
FROM empdetail;

SELECT emp_first_name, RIGHT(emp_first_name, 2) AS SHORT_NAME
FROM empdetail;

-- UPPER, LOWER, TRIM
SELECT emp_first_name, UPPER(emp_first_name) AS UPPER_CASE, LOWER(emp_first_name) AS LOWER_CASE, 
TRIM(emp_first_name) AS TRIM_NAME
FROM empdetail;

-- REPLACE
SELECT emp_first_name, REPLACE(emp_first_name, 'a', 'E') AS emp_rename
FROM empdetail;

-- LOCATE
SELECT emp_last_name, LOCATE('a', emp_last_name) AS locat_char
FROM empdetail;

-- CONCATENATION
SELECT emp_first_name, emp_last_name,
CONCAT(emp_first_name,' ', emp_last_name) AS emp_full_name
FROM empdetail;