BULK INSERT is a T-SQL command used to import a large volume of data from a file (like .txt or .csv) directly into a SQL Server table quickly and efficiently.
Purpose:
To load external data into a database table, usually for large datasets from flat files.

List four file formats that can be imported into SQL Server
.txt (Text file)
.csv (Comma-separated values)
.xls / .xlsx (Excel files)
.xml (XML file)

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2)
);

INSERT INTO Products (ProductID, ProductName, Price)
VALUES 
(1, 'Laptop', 1200.00),
(2, 'Mouse', 25.50),
(3, 'Keyboard', 45.00);

Explain difference between NULL and NOT NULL
NULL: Column can have no value (unknown or missing).
NOT NULL: Column must contain a value; cannot be empty.

ALTER TABLE Products
ADD CONSTRAINT UQ_ProductName UNIQUE (ProductName);
SELECT * FROM Products
WHERE Price > 50;

ALTER TABLE Products
ADD CategoryID INT;
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50) UNIQUE
);
xplain the purpose of the IDENTITY column

CREATE TABLE Employees (
    EmpID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(100)
);



BULK INSERT Products
FROM 'C:\Data\products.txt'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);

ALTER TABLE Products
ADD CONSTRAINT FK_Products_Categories FOREIGN KEY (CategoryID)
REFERENCES Categories(CategoryID);

CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Username VARCHAR(50)
);
ALTER TABLE Products
ADD CONSTRAINT CHK_Price_Positive CHECK (Price > 0);
ALTER TABLE Products
ADD Stock INT NOT NULL DEFAULT 0;
SELECT ProductID, ProductName, ISNULL(Price, 0) AS Price
FROM Products;

FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)



CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT CHECK (Age >= 18)
);


CREATE TABLE OrderDetails (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    PRIMARY KEY (OrderID, ProductID)
);

SELECT ISNULL(NULL, 'Default')         -- Output: 'Default'
SELECT COALESCE(NULL, NULL, 'Fallback') -- Output: 'Fallback'

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100) UNIQUE
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);





