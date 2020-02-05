-- #1

CREATE TABLE person (
  id SERIAL PRIMARY KEY,
  name TEXT,
  age INT,
  height INT,
  city TEXT,
  favorite_color TEXT
  )


--  #2

INSERT INTO person(name, favorite_color, city, height, age)
VALUES 
('John', 'Blue', 'Phoenix', 160, 25),
('Jordan', 'Green', 'Glendale', 170, 55),
('Jason', 'Yellow', 'Mesa', 150, 15),
('Jimothy', 'Silver', 'Scottsdale', 190, 35),
('Joshua', 'Orange', 'Tempe', 130, 45);

-- #3

SELECT * FROM person
ORDER BY height ASC;

-- #4

SELECT * FROM person
ORDER BY height DESC;

-- #5 

SELECT * FROM person
ORDER BY age DESC;

-- #6

SELECT * FROM person
WHERE age > 20;

-- #7

SELECT * FROM person
WHERE age = 18;

-- #8

SELECT * FROM person
WHERE age < 20 OR age > 30;

-- #9

SELECT * FROM person
WHERE age != 27;

-- #10

SELECT * FROM person
WHERE favorite_color != 'Red';

-- #11

SELECT * FROM person
WHERE favorite_color != 'Red' AND favorite_color != 'Blue';

-- #12

SELECT * FROM person
WHERE favorite_color IN ('Orange', 'Green');

-- #13

SELECT * FROM person
WHERE favorite_color IN ('Orange', 'Green', 'Blue');

-- #14

SELECT * FROM person
WHERE favorite_color IN ('Purple', 'Yellow');



-- Table-Orders #1

CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  person_id INT,
  product_name TEXT,
  product_price INT,
  quantity INT
  )

-- Table-Orders #2

INSERT INTO orders (product_name, person_id, product_price, quantity)
VALUES
('Pizza', 'Destiny', 14.99, 1),
('Hamburger', 'Davis', 11.99, 12),
('Sandwich', 'Daniel', 24.99, 1),
('Pasta', 'David', 13.99, 4),
('Cereal', 'Derrick', 84.99, 2);

-- Table-Orders #3

SELECT * FROM orders;

-- Table-Orders #4

SELECT SUM(quantity) FROM orders;

-- Table-Orders #5

SELECT SUM(product_price) FROM orders;

-- Table-Orders #6

SELECT SUM(product_price) FROM orders
WHERE person_id = 'David';



-- Table-Artist #1

INSERT INTO artist (name)
VALUES 
('Grateful Dead'),
('Billy Strings'),
('Bluetech');

-- Table-Artist #2

SELECT * FROM artist
ORDER BY name DESC
LIMIT 10;

-- Table-Artist #3

SELECT * FROM artist
ORDER BY name ASC
LIMIT 5;

-- Table-Artist #4

SELECT * FROM artist
WHERE name LIKE 'Black%';

-- Table-Artist #5

SELECT * FROM artist
WHERE name LIKE '%Black%';


-- Table-Employee #1

SELECT (first_name, last_name) FROM employee
WHERE city = 'Calgary';

-- Table-Employee #2

SELECT MAX(birth_date) FROM employee;

-- Table-Employee #3

SELECT MIN(birth_date) FROM employee;

-- Table-Employee #4

SELECT * FROM employee
WHERE last_name = 'Edwards';

SELECT * FROM employee
WHERE reports_to = 2;

-- Table-Employee #5

SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';



-- Table-Invoice #1

SELECT COUNT(*) FROM invoice 
WHERE billing_country = 'USA';

-- Table-Invoice #2

SELECT MAX(total) FROM invoice;

-- Table-Invoice #3

SELECT MIN(total) FROM invoice;

-- Table-Invoice #4

SELECT * FROM invoice
WHERE total > 5;

-- Table-Invoice #5

SELECT COUNT(*) FROM invoice
WHERE total < 5;

-- Table-Invoice #6

SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA', 'AZ', 'TX');

-- Table-Invoice #7

SELECT AVG(total) FROM invoice;

-- Table-Invoice #8

SELECT SUM(total) FROM invoice;
