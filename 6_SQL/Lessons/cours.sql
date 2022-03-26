
-- CREATE
CREATE DATABASE mydatabase;

CREATE TABLE mytable(
    id int(11), 
    field1 varchar(100), 
    field2 varchar(250)
);


-- SELECT
SELECT * FROM customers;

SELECT id, first_name, last_name FROM customers;

SELECT DISTINCT password FROM customers;

SELECT * FROM customers LIMIT 10;

SELECT * FROM customers ORDER BY id DESC;  
-- ASC = croissant, DESC = décroissant

SELECT first_name FROM customers ORDER BY first_name;


-- INSERT
INSERT INTO customers (first_name, last_name, email, password, avatar, join_date) VALUES('John', 'Codeur', 'john.codeur@hotmail.com', '1234', 'images/john.jpg', NOW());

INSERT INTO customers (first_name, last_name) VALUES ('Bob', 'Sponge');


-- UPDATE
UPDATE customers SET password= 'xiyt45';

UPDATE customers SET password='newpassword' WHERE first_name='John';


-- DELETE
DELETE FROM customers WHERE last_name='Sponge';

DELETE FROM animals;


-- WHERE
SELECT * FROM customers WHERE last_name='Smith';

SELECT * FROM customers WHERE id=18;

SELECT * FROM customers WHERE id<=10;

SELECT * FROM customers WHERE id<=10 AND last_name="Smith";

SELECT * FROM customers WHERE id<=10 OR last_name="Smith";

SELECT * FROM customers WHERE (id<=10 AND last_name="Smith") OR first_name="Donald";

SELECT * FROM customers WHERE last_name IN("Smith", "Thompson");


-- ALIAS
SELECT email, password AS motdepasse FROM customers;

SELECT customer, CONCAT(address, '- ', address2, '- ', city, '- ', state, ': ', zipcode) AS complete_adress FROM customer_addresses;

SELECT * FROM customer_addresses AS addresses;


-- JOIN
SELECT product_categories.name, products.name FROM product_categories INNER JOIN products ON product_categories.id=products.category;

SELECT product_categories.name, products.name FROM product_categories LEFT JOIN products ON product_categories.id=products.category;

SELECT product_categories.name, products.name FROM product_categories RIGHT JOIN products ON product_categories.id=products.category;

SELECT pc.name, p.name FROM product_categories AS pc INNER JOIN products AS p ON pc.id=p.category;

SELECT pc.name AS categoryName, p.name as productName FROM product_categories AS pc INNER JOIN products AS p ON pc.id=p.category;


-- DATE
SELECT first_name, last_name, join_date FROM customers WHERE join_date='2014-02-18 21:17:26';

SELECT first_name, last_name, join_date FROM customers WHERE join_date>='2014-02-18 00:00:00' AND join_date<= '2014-02-21 00:00:00';

SELECT first_name, last_name, join_date FROM customers WHERE join_date BETWEEN '2014-02-18 00:00:00' AND '2014-02-21 00:00:00';

SELECT first_name, last_name, YEAR(join_date) AS join_year FROM customers WHERE join_date BETWEEN '2014-02-18 00:00:00' AND '2014-02-21 00:00:00';

SELECT first_name, last_name, YEAR(join_date) AS join_year, MONTH(join_date) AS join_month, DAY(join_date) AS join_day FROM customers WHERE join_date BETWEEN '2014-02-18 00:00:00' AND '2014-02-21 00:00:00';

SELECT first_name, last_name, HOUR(join_date) AS join_hour, MINUTE(join_date) AS join_minute, SECOND(join_date) AS join_second FROM customers WHERE join_date BETWEEN '2014-02-18 00:00:00' AND '2014-02-21 00:00:00';


-- FUNCTIONS
SELECT AVG(price) AS average_price FROM products;

SELECT name, price FROM products WHERE price > (SELECT AVG(price) AS average_price FROM products);

SELECT COUNT(name) AS count_products FROM products;

SELECT COUNT(*) AS count_products FROM products;

SELECT COUNT(DISTINCT(price)) AS count_products FROM products;

SELECT COUNT(*) AS count_products FROM products WHERE category=1;

SELECT MAX(price) AS max_price FROM products;


-- GROUP BY & HAVING
SELECT category, AVG(price) AS average_price 
FROM products 
GROUP BY category;

SELECT product_categories.name, AVG(products.price) AS average_price
FROM products INNER JOIN product_categories
ON products.category = product_categories.id
GROUP BY product_categories.name;

SELECT pc.name, AVG(p.price) AS average_price
FROM products AS p INNER JOIN product_categories AS pc
ON p.category = pc.id
GROUP BY pc.name;

SELECT pc.name, AVG(p.price) AS average_price
FROM products AS p INNER JOIN product_categories AS pc
ON p.category = pc.id
GROUP BY pc.name
HAVING average_price>100;