/* Indexing */

CREATE DATABASE MyDatabase;

USE MyDatabase;

CREATE TABLE Users (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Age INT
);

INSERT INTO Users (FirstName, LastName, Email, Age)
VALUES
    ('John', 'Doe', 'john.doe@example.com', 30),
    ('Jane', 'Smith', 'jane.smith@example.com', 25),
    ('Bob', 'Johnson', 'bob.johnson@example.com', 35);

/* This command creates an index named "idx_email" on the "Email" column of the "Users" table. */

CREATE INDEX idx_email ON Users (Email);

/*
Indexes work by creating a separate data structure that stores a copy of the indexed column's values 
along with pointers to the actual rows in the table. When you query the database using a column that 
has an index, the database engine can quickly locate the relevant rows based on the indexed values.
*/

SELECT * FROM Users WHERE Email = 'john.doe@example.com';




