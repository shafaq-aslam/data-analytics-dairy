
CREATE DATABASE pizzashop;

USE pizzashop;

CREATE TABLE products(
	item_id INT,
    item_name VARCHAR(50) UNIQUE,
    item_price DECIMAL (4, 2) NOT NULL
);

INSERT INTO products
VALUES(1, 'Fries', 55.6),
	  (2, 'Hamburger', 95.2),
      (3, 'Fried Chicken', 68.4);
      
-- If you already have a table and want to change the decimal precision of a column in it
ALTER TABLE products
MODIFY COLUMN item_price DECIMAL(6, 2);

# **************************************************
-- if you forget to add not null 

ALTER TABLE products
MODIFY item_price DECIMAL (4, 2) NOT NULL;

INSERT INTO products
VALUES(4, 'Zinder Burger', 99.6),
	  (5, 'Pasta', 45.20),
      (6, 'Noodles', NULL); -- it will show error
      
INSERT INTO products
VALUES(4, 'Zinder Burger', 99.6),
	  (5, 'Pasta', 45.20),
      (6, 'Noodles', 35.23); 
      
SELECT * FROM products;









