CREATE DATABASE sgui_database;

USE sgui_database;

CREATE TABLE Employees (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(15) NOT NULL,
    LastName VARCHAR(15) NOT NULL,
    BirthDate DATE,
    Photo BLOB,
    Notes VARCHAR(60)
);

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerName VARCHAR(30) NOT NULL,
    ContactName VARCHAR(40)
);

CREATE TABLE CustomersAddress (
    AddressID INT AUTO_INCREMENT PRIMARY KEY,
    Street VARCHAR(20) NOT NULL,
    District VARCHAR(20) NOT NULL,
    PostalCode VARCHAR(20) NOT NULL,
    City VARCHAR(20) NOT NULL,
    Country VARCHAR(20) NOT NULL,
    CustomerID INT
);

CREATE TABLE Categories (
    CategoryID INT AUTO_INCREMENT PRIMARY KEY,
    CategoryName VARCHAR(30) NOT NULL,
    CategoryDesc VARCHAR(100)
);

CREATE TABLE Suppliers (
    SupplierID INT AUTO_INCREMENT PRIMARY KEY,
    SupplierName VARCHAR(20),
    ContactName VARCHAR(30),
    Phone VARCHAR(15) NOT NULL
);

CREATE TABLE SuppliersAddress (
    AddressID INT AUTO_INCREMENT PRIMARY KEY,
    Street VARCHAR(20) NOT NULL,
    District VARCHAR(20) NOT NULL,
    PostalCode VARCHAR(20) NOT NULL,
    City VARCHAR(20) NOT NULL,
    Country VARCHAR(20) NOT NULL,
    SupplierID INT 
);

CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(20) NOT NULL,
    Unit INT,
    Price DECIMAL(10, 2) NOT NULL,
    SupplierID INT,
    CategoryID INT
);

CREATE TABLE Shippers (
    ShipperID INT AUTO_INCREMENT PRIMARY KEY,
    ShipperName VARCHAR(30) NOT NULL,
    Phone VARCHAR(15) NOT NULL
);

CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    OrderDate DATE NOT NULL,
    CustomerID INT,
    EmployeeID INT,
    ShipperID INT
);

CREATE TABLE OrderDetails (
    OrderDetailID INT AUTO_INCREMENT PRIMARY KEY,
    Payment DECIMAL(10, 2) NOT NULL,
    ProductID INT,
    OrderID INT
);

ALTER TABLE CustomersAddress
ADD CONSTRAINT fk_customer_address_customer_id
FOREIGN KEY (CustomerID) REFERENCES Customers (CustomerID);

ALTER TABLE SuppliersAddress
ADD CONSTRAINT fk_suppliers_address_supplier_id
FOREIGN KEY (SupplierID) REFERENCES Suppliers (SupplierID);

ALTER TABLE Products
ADD CONSTRAINT fk_products_supplier_id
FOREIGN KEY (SupplierID) REFERENCES Suppliers (SupplierID),
ADD CONSTRAINT fk_products_category_id
FOREIGN KEY (CategoryID) REFERENCES Categories (CategoryID);

ALTER TABLE Orders
ADD CONSTRAINT fk_orders_customer_id
FOREIGN KEY (CustomerID) REFERENCES Customers (CustomerID),
ADD CONSTRAINT fk_orders_employee_id
FOREIGN KEY (EmployeeID) REFERENCES Employees (EmployeeID),
ADD CONSTRAINT fk_orders_shipper_id
FOREIGN KEY (ShipperID) REFERENCES Shippers (ShipperID);

ALTER TABLE OrderDetails
ADD CONSTRAINT fk_order_details_product_id
FOREIGN KEY (ProductID) REFERENCES Products (ProductID),
ADD CONSTRAINT fk_order_details_order_id
FOREIGN KEY (OrderID) REFERENCES Orders (OrderID);