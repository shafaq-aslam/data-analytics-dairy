USE empdata;

CREATE TABLE empDetail (
#	table_name   datatype
	emp_id INT PRIMARY KEY,
    emp_first_name VARCHAR(50),
    emp_last_name VARCHAR (50),
    emp_experience INT,
    emp_role VARCHAR (50),
    emp_pay INT,
    CONSTRAINT chk_monthly_pay CHECK (emp_pay >= 20000) # for check pay
);

-- if you forget to add check pay constraint
ALTER TABLE empDetail
ADD CONSTRAINT chk_monthly_pay CHECK (emp_pay >= 20000);

INSERT INTO empdetail
VALUES (6, "Harry", "Bush", 1, "WordPress Intern", 19000), -- it will show error
	   (7, "Loosey", "Sheil", 5, "Project Manager", 150000);
       
-- if you want to delete check
ALTER TABLE empdetail
DROP CONSTRAINT chk_monthly_pay;
       
SELECT * FROM empdetail;


