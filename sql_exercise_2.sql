CREATE TABLE Customers (
    CustomerID int,
    Name text,
    Email text
);

INSERT INTO Customers (CustomerID, Name, Email)
VALUES (1, 'Alice Johnson', 'alice.johnson@email.com'),
       (2, 'Bob Smith', 'bob.smith@email.com'),
       (3, 'Charlie Brown', 'charlie.brown@email.com');

UPDATE Customers SET Email = 'bob.smith@newdomain.com' WHERE CustomerID = 2;

SELECT * FROM Customers;