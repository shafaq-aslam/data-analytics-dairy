CREATE DATABASE std_results;
USE std_results;
CREATE TABLE std_report (
	std_id INT,
    std_first_name VARCHAR(50),
    std_last_name VARCHAR (50),
    std_obt_marks INT,
    std_annual_progress VARCHAR (50) NULL,
    std_status VARCHAR (50) NULL
);
INSERT INTO std_report
VALUES (1, "Maria", "Jabbar", 400, "Excellent", "Pass"),
	   (2, "Areeba", "Abdul haq", 450, "Excellent", "Pass"),
       (3, "Naima", "Anwar", 420, "Excellent", "Pass"),
       (4, "Kinza", "Akram", 380, "Very Good", "Pass"),
       (5, "Laraib", "Ghafoor", 250, "Fair", "Fail"),
	   (6, "Naila", "Zubair", 150, "", "");

# ***************************************************************************************

# for disable "safe mode"
# In case you are facing a safe mode error while updating data
SET SQL_SAFE_UPDATES = 0;

# for disable "safe mode"
SET SQL_SAFE_UPDATES = 1;

# ***************************************************************************************

# for update data in a table
UPDATE std_report
SET std_annual_progress = "Fair", std_status = "Fail"
WHERE std_id = 6;

UPDATE std_report
SET std_annual_progress = "Very Fair",
std_obt_marks = 300, std_status = "Pass"
WHERE std_id = 5;

UPDATE std_report
SET std_annual_progress = "Very Fair",
std_obt_marks = 300, std_status = "Pass"
WHERE std_id = 4 AND std_first_name = 'Kinza';

# if you want to update whole column, than don't mention WHERE clause
UPDATE std_report
SET std_status = "Fail";

# for delete data from a table
DELETE FROM std_report   #  >>>>  Don't use "delete" without "where" clause it will delete whole table. 
WHERE std_id = 6;

SELECT * FROM std_report;





