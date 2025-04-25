Question 1
  Ans
-- Creates a new table in 1NF
CREATE TABLE ProductDetail_1NF (
    OrderID INT,
    CustomerName VARCHAR(255),
    Product VARCHAR(255)
);

-- Inserts data into the new table and splitss the Products column
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product)
VALUES
    (101, 'John Doe', 'Laptop'),
    (101, 'John Doe', 'Mouse'),
    (102, 'Jane Smith', 'Tablet'),
    (102, 'Jane Smith', 'Keyboard'),
    (102, 'Jane Smith', 'Mouse'),
    (103, 'Emily Clark', 'Phone');

Question 2
  Ans
-- Creates the Order table and removes any partial dependencies
CREATE TABLE OrderDetails_Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(255)
);

-- Inserts data into the Orders table
INSERT INTO OrderDetails_Orders (OrderID, CustomerName)
VALUES
    (101, 'John Doe'),
    (102, 'Jane Smith'),
    (103, 'Emily Clark');

-- Creates the OrderProduct table that links products to the respective orders
CREATE TABLE OrderDetails_Products (
    OrderID INT,
    Product VARCHAR(255),
    Quantity INT,
    PRIMARY KEY (OrderID, Product)
);

-- Inserts data into the OrderProduct table
INSERT INTO OrderDetails_Products (OrderID, Product, Quantity)
VALUES
    (101, 'Laptop', 2),
    (101, 'Mouse', 1),
    (102, 'Tablet', 3),
    (102, 'Keyboard', 1),
    (102, 'Mouse', 2),
    (103, 'Phone', 1);
