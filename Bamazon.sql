CREATE DATABASE Bamazon;

USE Bamazon;

CREATE TABLE products(
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(100) NOT NULL,
  department_name VARCHAR(45) NOT NULL,
  price DECIMAL(10,2) NULL,
  stock_quantity INT default 0,
  PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Alexa", "Electronics", 100.00, 3000);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("MacBook Pro", "Computers", 1250.00, 5000);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Dell XPS 13", "Computers", 2000.00, 75);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("iPhone 6", "Cell Phones", 500.00, 1200);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Pillow Case", "Home Furnishings", 50.00, 10000);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Grey Hoodie", "Clothing", 22.99, 1500);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Vintage Record Player", "Music", 3000.00, 10);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Bob Dylan Vinyl", "Music", 10.99, 3000);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Mac Demarco Vinyl", "Music", 23.99, 1000);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Bracelet", "Jewelry", 59.99, 3000);

SELECT * FROM products;