-- Creating Database
CREATE DATABASE sales_DB;

-- DATA DEFINITION --

USE sales_DB;  

-- Creating Sales Tables
CREATE TABLE sales(
purchase_number INT PRIMARY KEY,
date_of_purchase DATE NOT NULL, 
customer_id INT NOT NULL,
item_code VARCHAR(10) NOT NULL
);

-- Creating Customers Tables 
CREATE TABLE customers(
customer_id INT PRIMARY KEY,
first_name VARCHAR(255) NOT NULL, 
last_name VARCHAR(255) NOT NULL,
email_address VARCHAR(255) NOT NULL,
number_of_complaints INT
);

-- Creating The Items Tables 
CREATE TABLE items(
item_code VARCHAR(10) PRIMARY KEY,
item VARCHAR(255), 
unit_price_usd DECIMAL(5,2),
company_id INT,
company_name VARCHAR(255) NOT NULL
);

-- DATA MANIPULATION --

-- Inserting Records into Sales Table
INSERT INTO sales (
	purchase_number, 
    date_of_purchase,
    customer_id,
    item_code
)
VALUES
	(1, "2020-05-28", 1, "A11"),
    (2, "2020-05-27", 2, "B11"),
    (3, "2020-05-27", 2, "A12"),
    (4, "2020-05-31)", 3, "C11"),
    (5, "2020-05-31", 4, "B12");

-- Retrieve Data from Sales Table
SELECT* 
FROM sales;

-- Inserting Records into Customers Table
INSERT INTO customers (
	customer_id, 
    first_name,
    last_name,
    email_address,
    number_of_complaints
)
VALUES
	(1, "Plinio", "Irma", "plinioirma29@gmail.com", 0),
    (2, "Kallistrate", "Jeroboam", "KallistrateJeroboam@outlook.com", 3),
    (3, "Yesfir", "Vladimira", "YesfirVladimira@gmail.com", 1),
    (4, "Ramazan", "Swathi", "RamazanSwathi@yahoo.com", 2),
    (5, "Maria", "Yeong", "MariaYeong@gmail.com", 1);

-- Retrieve Data from Customers Table
SELECT* 
FROM customers;

-- Inserting Records into Items Table
INSERT INTO items
VALUES
	("A11", "Flask", 12.50, 1, "Company A"),
    ("A12", "Lamp", 10, 1, "Company A"),
    ("B11", "Desk", 50, 2, "Company B"),
    ("B12", "Chair", 150, 2, "Company B"),
    ("C11", "Bicycle", 35.50, 3, "Company C");

-- Retrieve Data from Items Table
SELECT* 
FROM items;

-- Create a Copy of a Table
CREATE TABLE new_customers AS
SELECT*
FROM customers;


-- Adding a New Column to Copied Table
ALTER TABLE new_customers
ADD COLUMN gender CHAR(2);

-- Updating new_customers Table
UPDATE new_customers
SET gender = "M"
WHERE customer_id = 1;

-- Retrieve Data from new_customers Table
SELECT*
FROM new_customers;

-- Rename New Customers Table 
ALTER TABLE new_customers
RENAME TO customers_updates;

-- Drop New Customers Table
DROP TABLE customers_updates;

-- Delete Record From Sales Table
DELETE FROM sales
WHERE customer_id = 3;


