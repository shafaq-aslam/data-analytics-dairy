USE pizzashop;

CREATE TABLE products(
	item_id INT,
    item_name VARCHAR(50) UNIQUE,
    item_price DECIMAL (4, 2) DEFAULT 0.00 -- value will automatically be inserted if no other value is explicitly provided.
);

INSERT INTO products (item_id, item_name)
VALUES(7, 'Spoon'),
	  (8, 'Nepkin'),
      (9, 'Straw');
      
-- if you forget to add DEFUALT constraint
ALTER TABLE products
ALTER item_price SET DEFAULT 0.00;
      
select * from products;