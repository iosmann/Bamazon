DROP DATABASE IF EXISTS Bamazon;

CREATE DATABASE Bamazon;

USE Bamazon;

CREATE TABLE products(
    item_id INT  NOT NULL AUTO_INCREMENT,
    product_name VARCHAR (30) NOT NULL,
    department_name VARCHAR (30) NOT NULL,
    price DECIMAL (10,2) NOT NULL,
    stock_quantity INT (255) NOT NULL,
    PRIMARY KEY (item_id)
);

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES("Aquafina", "Food and Drink", 3.50, 255);

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES("Macbook", "Computers", 2000.00, 100);

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES("Versace Versus", "Perfumes", 60.00, 255);

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES("Nike Hat", "Accesories", 650.00, 200);

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES("Eat, Pray, Love", "Books", 23.50, 255);

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES("Ella Enchanted", "Books", 13.50, 250);

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES("Hot Cheetos", "Food and Drink", 4.50, 50);

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES("Canon Eos Rebel T2i", "Cameras", 400.00, 100);

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES("FIFA", "Video Games", 60.00, 255);

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES("Spalding Basketball", "Sporting Goods", 65.00, 140);

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES("Nike Killshot", "Clothing", 100.00, 25);

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES("Margherita Pizza", "Food and Drink", 3.50, 250);


SELECT * FROM products;
