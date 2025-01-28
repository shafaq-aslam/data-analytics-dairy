USE empdata;

# TO CREATE TABLE
CREATE TABLE empDetail (
#	table_name   datatype
	emp_id INT PRIMARY KEY,
    emp_first_name VARCHAR(50),
    emp_last_name VARCHAR (50),
    emp_experience INT,
    emp_role VARCHAR (50),
    emp_pay INT
);