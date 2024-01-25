CREATE TABLE Customers (
    CustomerID int PRIMARY KEY,
    Name text,
    Email text
);

CREATE TABLE Books (
    BookID int PRIMARY KEY,
    Title varchar(255)
);

CREATE TABLE Orders (
    OrderID int PRIMARY KEY,
    Quantity int,
    BookID int,
    CustomerID int,
    FOREIGN key (BookID) REFERENCES Books(BookID),
    FOREIGN key (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Customers (CustomerID, Name, Email)
VALUES (1, 'Alice Johnson', 'alice.johnson@email.com'),
       (2, 'Bob Smith', 'bob.smith@email.com'),
       (3, 'Charlie Brown', 'charlie.brown@email.com');

INSERT INTO Books (BookID, Title)
VALUES (1, 'Replay'),
       (2, 'Frankenstein'),
       (3, 'Dracula');

INSERT INTO Orders(OrderID, Quantity, BookID, CustomerID)
VALUES (1, 20, 1, 1),
       (2, 30, 2, 2),
       (3, 30, 3, 1);

SELECT Customers.Name, Books.Title, Orders.Quantity FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
JOIN Books ON Orders.BookID = Books.BookID;