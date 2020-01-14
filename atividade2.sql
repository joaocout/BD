--https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_all

--item 1
SELECT CategoryName, Description FROM Categories WHERE CategoryID >=4 AND CategoryID <=6;

--item 2
SELECT * FROM Shippers WHERE ShipperName = 'Speedy Express';

--item 3
SELECT * FROM Customers WHERE Country = 'Germany';

--item 4
SELECT CustomerName, Address, City, PostalCode FROM Customers WHERE Country = 'Brazil';

--item 5
SELECT Categories.Description, Suppliers.SupplierName, Products.ProductName, Products.Price
FROM ((Products
INNER JOIN Categories ON Categories.CategoryID = Products.CategoryID)
INNER JOIN Suppliers ON Suppliers.SupplierID = Products.SupplierID);

--item 6
SELECT DISTINCT Price FROM Products;

--item 7
SELECT DISTINCT Country FROM Suppliers;

--item 8
SELECT OrderID FROM Orders WHERE CustomerID = 55 AND EmployeeID = 4;

--item 9
SELECT Orders.OrderID, Products.ProductName
FROM ((Orders
INNER JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID)
INNER JOIN Products ON Products.ProductID = OrderDetails.ProductID);

--item 10
SELECT Price FROM Products ORDER BY Price DESC;