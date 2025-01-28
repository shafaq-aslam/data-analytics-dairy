USE customerdetail;

SELECT cust_name
FROM custbankdetail
UNION
SELECT  trans_id
FROM transactions;

USE empdata;

SELECT emp_first_name, emp_last_name, emp_pay, 'Highly Paid Employee' AS LABEL
FROM empdetail
WHERE emp_pay > 30000
UNION
SELECT emp_first_name, emp_last_name, emp_experience, 'Experienced Employee' AS LABEL
FROM empdetail
WHERE emp_experience > 3
ORDER BY emp_first_name, emp_last_name;