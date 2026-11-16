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