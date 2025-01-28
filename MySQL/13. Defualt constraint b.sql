USE empdata;

CREATE TABLE transactions(
	transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    transaction_amount DECIMAL (6, 2),
    transaction_date DATETIME DEFAULT NOW()
);

INSERT INTO transactions(transaction_amount)
VALUES (2000.56),
	   (105.36),
       (2056.56);

SELECT * FROM transactions;