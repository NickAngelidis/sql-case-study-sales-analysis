-- Schema Creation
CREATE DATABASE IF NOT EXISTS sales_analysis;

-- Selection of Database
USE sales_analysis;

-- Creation of Sales Table
CREATE TABLE sales (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    sale_date DATE,
    product VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2)
);

-- Data Insert
INSERT INTO sales (sale_date, product, quantity, price) VALUES
('2025-01-05', 'Laptop', 3, 800.00),
('2025-01-06', 'Mouse', 10, 15.00),
('2025-01-10', 'Keyboard', 5, 30.00),
('2025-01-12', 'Monitor', 2, 200.00),
('2025-02-01', 'Laptop', 4, 820.00),
('2025-02-05', 'Mouse', 8, 14.00),
('2025-02-08', 'Monitor', 3, 210.00),
('2025-03-02', 'Keyboard', 7, 28.00),
('2025-03-05', 'Laptop', 2, 830.00),
('2025-03-08', 'Mouse', 15, 13.50);