
-- if you forget to add unique contraint during creating table

ALTER TABLE emphiring_detail
ADD CONSTRAINT
UNIQUE(emp_id);

SELECT * FROM emphiring_detail;

INSERT INTO emphiring_detail -- tried to add duplicate record
VALUES (4, 'Adem', CURRENT_DATE(), CURRENT_DATE(), CURRENT_TIME());