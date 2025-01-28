
# Use perticular database
USE empdata;

# for insert rows/data in table
INSERT INTO empdetail
VALUE (4, "Shayan", "Aslam", 2, "Web Designer", 30000),
	  (5, "Waqas", "Latif", 3, "WordPress Developer", 35000);
	
# to show table from the database
SELECT * 
FROM empdetail;

# show details by columns
SELECT emp_id, emp_first_name, emp_last_name
FROM empdetail;

# for something specific
SELECT * 
FROM empdetail 
WHERE emp_id = 1;

SELECT * 
FROM empdetail 
WHERE emp_id != 1;

SELECT * 
FROM empdetail
WHERE emp_first_name = "Shayan";

SELECT *
FROM empdetail
WHERE emp_pay > 50000;

SELECT *
FROM empdetail
WHERE emp_pay >= 50000 and emp_pay <=350000;

# use of is null
SELECT *
FROM empdetail
WHERE emp_pay IS NULL;

SELECT *
FROM empdetail
WHERE emp_pay IS NOT NULL;




