
-- CURRENT TIME AND DATE

USE empdata;

CREATE TABLE emphiring_detail(
	emp_id INT,
    emp_name VARCHAR(50),
    emp_hiring_date DATE,
    emp_joining_date DATE,
    emp_joining_time TIME
);

INSERT INTO emphiring_detail
VALUES (1, 'Keith', CURRENT_DATE(), CURRENT_DATE(), CURRENT_TIME()),
	   (2, 'Jemes', CURRENT_DATE() + 1, CURRENT_DATE() + 1, CURRENT_TIME()),
       (3, 'Harry', CURRENT_DATE(), CURRENT_DATE(), CURRENT_TIME()),
       (4, 'Loren', CURRENT_DATE() + 2, CURRENT_DATE() + 2, CURRENT_TIME());
       
SELECT * FROM emphiring_detail;