USE customerdetail;

-- INNER JOIN 

SELECT *
FROM custbankdetail 
INNER JOIN transactions
ON custbankdetail.trans_id = transactions.trans_id;

-- 1st way
SELECT cust_id, cust_name, amount, trans_date_time
FROM custbankdetail 
INNER JOIN transactions
ON custbankdetail.trans_id = transactions.trans_id;

-- 2nd way
SELECT custbankdetail.trans_id, custbankdetail.cust_name, transactions.amount, transactions.trans_date_time
FROM custbankdetail 
INNER JOIN transactions
ON custbankdetail.trans_id = transactions.trans_id;

-- 3rd way
SELECT * 
FROM custbankdetail AS cbd
INNER JOIN transactions AS tr
ON cbd.trans_id = tr.trans_id;

-- 4th way
SELECT cbd.trans_id, cbd.cust_name, tr.amount, tr.trans_date_time
FROM custbankdetail AS cbd
INNER JOIN transactions AS tr
ON cbd.trans_id = tr.trans_id;

-- LEFT JOIN #WILL SHOW ALL ROWS FROM LEFT TABLE AND MATCHED ROWS FROM RIGHT TABLE (unmatched rows from the right table are filled with NULL.).

SELECT *
FROM transactions LEFT JOIN custbankdetail
ON custbankdetail.trans_id = transactions.trans_id;

-- RIGHT JOIN #WILL SHOW ALL ROWS FROM RIGHT TABLE AND MATCHED ROWS FROM LEFT TABLE (unmatched rows from the left table are filled with NULL)

SELECT* 
FROM custbankdetail RIGHT JOIN transactions
ON custbankdetail.trans_id = transactions.trans_id;
