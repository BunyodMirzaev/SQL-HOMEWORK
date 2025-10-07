CREATE TABLE Employees (
    EmpID INT,
    Name VARCHAR(50),
    Salary DECIMAL(10,2)
);

INSERT INTO Employees (EmpID, Name, Salary)
VALUES (1, 'Alice', 6000.00);

INSERT INTO Employees (EmpID, Name, Salary)
VALUES 
(2, 'Bob', 5000.00),
(3, 'Charlie', 4000.00);

UPDATE Employees
SET Salary = 7000.00
WHERE EmpID = 1;

DELETE FROM Employees
WHERE EmpID = 2;

DELETE FROM Employees WHERE EmpID = 1;
TRUNCATE TABLE Employees;
DROP TABLE Employees;


ALTER TABLE Employees
ALTER COLUMN Name VARCHAR(100);

ALTER TABLE Employees
ADD Department VARCHAR(50);

ALTER TABLE Employees
ALTER COLUMN Salary FLOAT;

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

TRUNCATE TABLE Employees;

INSERT INTO Departments (DepartmentID, DepartmentName)
SELECT 1, 'HR' UNION ALL
SELECT 2, 'IT' UNION ALL
SELECT 3, 'Finance' UNION ALL
SELECT 4, 'Sales' UNION ALL
SELECT 5, 'Marketing';

UPDATE Employees
SET Department = 'Management'
WHERE Salary > 5000;

DELETE FROM Employees;

ALTER TABLE Employees
DROP COLUMN Department;

EXEC sp_rename 'Employees', 'StaffMembers';

DROP TABLE Departments;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Description VARCHAR(255)
);

ALTER TABLE Products
ADD CONSTRAINT CHK_Price_Positive CHECK (Price > 0);

ALTER TABLE Products
ADD StockQuantity INT DEFAULT 50;

EXEC sp_rename 'Products.Category', 'ProductCategory', 'COLUMN';

INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, Description)
VALUES 
(1, 'Laptop', 'Electronics', 1200.00, 'Gaming Laptop'),
(2, 'Desk Chair', 'Furniture', 150.00, 'Ergonomic chair'),
(3, 'Smartphone', 'Electronics', 800.00, 'Latest model'),
(4, 'Notebook', 'Stationery', 3.50, 'College ruled'),
(5, 'Water Bottle', 'Accessories', 10.00, 'Stainless steel');

SELECT *
INTO Products_Backup
FROM Products;

EXEC sp_rename 'Products', 'Inventory';

ALTER TABLE Inventory
ALTER COLUMN Price FLOAT;

EXEC sp_rename 'Inventory', 'Inventory_Old';
CREATE TABLE Inventory (
    ProductCode INT IDENTITY(1000,5) PRIMARY KEY,
    ProductID INT,
    ProductName VARCHAR(100),
    ProductCategory VARCHAR(50),
    Price FLOAT,
    Description VARCHAR(255),
    StockQuantity INT DEFAULT 50
);
INSERT INTO Inventory (ProductID, ProductName, ProductCategory, Price, Description, StockQuantity)
SELECT ProductID, ProductName, ProductCategory, Price, Description, StockQuantity
FROM Inventory_Old;

DROP TABLE Inventory_Old;













