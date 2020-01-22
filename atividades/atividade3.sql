--item 1
CREATE TABLE Dependants(
	DependantID INT,
	DependantName VARCHAR(255),
	BirthDate DATE,
	CustomerID INT
);

--item 2
ALTER TABLE Dependants
ADD HealthPlan CHAR CHECK(HealthPlan = 'S' OR HealthPlan = 'N');

--item 3
CREATE TABLE Customers(
	CustomerID INT,
	CustomerName VARCHAR(255),
	ContactName VARCHAR(255),
	Address VARCHAR(255),
	City VARCHAR(255),
	PostalCode VARCHAR(255),
	Country VARCHAR(255)
);
CREATE TABLE Categories(
	CategoryID INT,
	CategoryName VARCHAR(255),
	Description VARCHAR(255)	
);
CREATE TABLE Employees(
	EmployeeID INT,
	LastName VARCHAR(255),
	FirstName VARCHAR(255),
	BirthDate DATE,
	Photo VARCHAR(255),
	Notes VARCHAR(255)
);
CREATE TABLE OrderDetails(
	OrderDetailID INT,
	OrderID INT,
	ProductID INT,
	Quantity INT
);
CREATE TABLE Orders(
	OrderID INT,
	CustomerID INT,
	EmployeeID INT,
	OrderDate DATE,
	ShipperID INT
);
CREATE TABLE Products(
	ProductID INT,
	ProductName VARCHAR(255),
	SupplierID INT,
	CategoryID INT,
	Unit VARCHAR(255),
	Price REAL
);
CREATE TABLE Shippers(
	ShipperID INT,
	ShipperName VARCHAR(255),
	Phone VARCHAR(255)
);
CREATE TABLE Suppliers(
	SupplierID INT,
	SupplierName VARCHAR(255),
	ContactName VARCHAR(255),
	Address VARCHAR(255),
	City VARCHAR(255),
	PostalCode VARCHAR(255),
	Country VARCHAR(255),
	Phone VARCHAR(255)
);