-- creating a new database named inventoryDB

CREATE DATABASE inventoryDB;

-- \connect inventoryDB (only for postgres)

-- creating a table named products inside the inventoryDB

CREATE TABLE product (
  name TEXT,
  description TEXT,
  price float(2),
  quantity INT,
  category TEXT);

-- inserting rows

INSERT INTO product VALUES
 ('rice','1kg',70.00,50,'grocery'),
 ('wheat','1kg',55.00,75,'grocery'),
 ('chips','yellow lays',20.00,100,'snacks'),
 ('biscuit','hide and seek',30.00,150,'snacks'),
 ('soap','dove',88.00,65,'household'),
 ('phenyl','floor cleaner',160.00,15,'household'),
 ('vim','dishwasher',59.20,90,'household'),
 ('lentils','1kg',47.30,50,'grocery');

 -- Retrieve all products from the products table
 SELECT * FROM product;

 -- Retrieve products with a price less than a specified amount.
 SELECT * FROM product WHERE price<60;

 -- Retrieve products with more than a specified quantity in stock.
  SELECT * FROM product WHERE quantity>70;



 -- Update the price of a specific product.
 UPDATE product
 SET price = 35
 WHERE name = 'biscuit';

 -- Delete a product from the products table.
 DELETE FROM product
 WHERE name = 'soap';


