CREATE DATABASE customerdetail;

USE customerdetail;

CREATE TABLE transactions(
		trans_id INT PRIMARY KEY AUTO_INCREMENT,
        amount DECIMAL (5, 2),
        trans_date_time DATETIME
);

INSERT INTO transactions(amount, trans_date_time)
VALUES(23.5, NOW()),
	  (2.45, NOW()),
      (20.15, NOW());

SELECT * FROM transactions;

CREATE TABLE custbankdetail(
		cust_id INT PRIMARY KEY AUTO_INCREMENT,
        cust_name VARCHAR(50),
        cust_acc_no INT,
        trans_id INT,
        FOREIGN KEY(trans_id) REFERENCES transactions(trans_id)
);

INSERT INTO custbankdetail(cust_name, cust_acc_no, trans_id)
VALUES("Harry", 789652693, 3),
	  ("Jerry", 789632663, 2),
      ("Amit", 789658694, 1);
      
SELECT * FROM custbankdetail;


