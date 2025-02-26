-- Temporary Table
USE pizzashop;
CREATE TEMPORARY TABLE temp_table
( cust_name VARCHAR(50),
  cust_order VARCHAR(50),
  price INT,
  order_status VARCHAR(50)
);

SELECT * FROM temp_table;

INSERT INTO temp_table
VALUES('Shafaq', 'Red Chilli Pizza', 1500, 'In Process'),
	  ('Shayan', 'Cheezy Fries', 800, 'Deleverd')