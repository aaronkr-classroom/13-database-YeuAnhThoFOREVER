-- Create the database (if it doesn't exist)
CREATE DATABASE IF NOT EXISTS yourDatabaseName;
USE yourDatabaseName;

-- Create the books table
CREATE TABLE IF NOT EXISTS books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    published_date DATE
);

-- Insert initial data
INSERT INTO books (title, author, price, published_date) 
VALUES 
('Book Title 1', 'Author 1', 15.99, '2024-01-01'),
('Book Title 2', 'Author 2', 22.49, '2024-02-15');

-- Update the price of the first book
UPDATE books 
SET price = 18.99 
WHERE id = 1;

-- Delete the second book
DELETE FROM books 
WHERE id = 2;

-- Select all data from the books table
SELECT * FROM books;
