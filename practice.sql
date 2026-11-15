-- Create a new table for electronics
CREATE TABLE Electronics(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Name TEXT NOT NULL,
    Category TEXT,
    Price REAL,
    InStock INTEGER
);