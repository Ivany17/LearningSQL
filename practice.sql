-- Create a new table for electronics
CREATE TABLE Electronics(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Name TEXT NOT NULL,
    Category TEXT,
    Price REAL,
    InStock INTEGER
);

-- Insert a new product
INSERT INTO Electronics (Name, Category, Price, InStock)
VALUES('MacBook Pro', 'Ноутбуки', 1999.99, 1);

-- Select all products
SELECT * FROM Electronics;

-- Select only two columns
SELECT Name, Price FROM Electronics;

-- Select only with price more than 1500
SELECT * FROM Electronics
WHERE Price > 1500;

-- Add five new items
INSERT INTO Electronics (Name, Category, Price, InStock)
VALUES
    ('Samsung Galaxy S24', 'Смартфони', 899.00, 1),
    ('Dell XPS 13', 'Ноутбуки', 1299.50, 1),
    ('AirPods Pro', 'Аксесуари', 249.00, 0),
    ('Logitech MX Master 3', 'Аксесуари', 99.99, 1),
    ('iPad Air', 'Планшети', 599.00, 1);

-- Order by descending
SELECT * FROM Electronics
ORDER BY Price DESC;

-- Count the total number of electronics
SELECT COUNT(*) FROM Electronics;

-- Count the total price of electronics
SELECT SUM(Price) FROM Electronics;

-- Count the average price of electronics
SELECT AVG(Price) FROM Electronics;

-- Find the most cheap item in electronics
SELECT MIN(Price) FROM Electronics;

-- Find the most expensive item in electronics
SELECT MAX(Price) FROM Electronics;

-- Count an amount of items in each category
SELECT Category, COUNT(*) FROM Electronics
GROUP BY Category;

-- Count a total and average price and find the most expensive and the most cheap item in each category
SELECT Category, SUM(Price), AVG(Price), MAX(Price), MIN(Price) FROM Electronics
GROUP BY Category;

-- Create a new table 
CREATE TABLE Orders(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    CustomerName TEXT NOT NULL,
    ElectronicsId INTEGER,
    Quantity INTEGER
);

-- Fill the new table 
INSERT INTO Orders(CustomerName, ElectronicsId, Quantity)
VALUES
    ('Іван', 1, 1),
    ('Марія', 3, 2),
    ('Олег', 2, 1);

-- Show the customer name, his order and count the total price of the order
SELECT Orders.CustomerName, Electronics.Name, Electronics.Price * Orders.Quantity
FROM Orders
JOIN Electronics ON Orders.ElectronicsId = Electronics.Id;