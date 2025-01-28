CREATE DATABASE onlinemart;
USE onlinemart;
CREATE TABLE sale(
	order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(50),
    category VARCHAR(50),
    quantity INT,
    price DECIMAL(5, 2)
);
SELECT * FROM sale;

INSERT INTO sale (customer_id, product_name, category, quantity, price)
VALUES (101, 'Laptop', 'Electronics', 1, 999.25),
	   (102, 'Phone', 'Electronics', 2, 500.36),
       (101, 'Desk', 'Furniture', 1, 300.69),
       (103, 'Headphones', 'Electronics', 2, 150.75),
       (102, 'Chair', 'Furniture', 3, 75.85),
       (102, 'Charger', 'Electronics', 2, 80.96);
       
-- GROUP BY
SELECT customer_id, SUM(quantity) AS total_quantity
FROM sale
GROUP BY customer_id;

SELECT customer_id, SUM(price*quantity) AS total_revenue
FROM sale
GROUP BY customer_id, category;

SELECT customer_id, SUM(price*quantity) AS total_revenue
FROM sale
GROUP BY customer_id;

SELECT category, SUM(price*quantity) AS total_revenue
FROM sale
GROUP BY category;

SELECT category
FROM sale
GROUP BY category;

-- GROUP BY WITH HAVING CLAUSE

SELECT customer_id, category, SUM(quantity) AS total_quantity 
FROM sale
GROUP BY customer_id, category
HAVING total_quantitY > 1;

SELECT customer_id, category, SUM(quantity) AS total_quantity 
FROM sale
GROUP BY customer_id, category
HAVING total_quantitY >= 1;
