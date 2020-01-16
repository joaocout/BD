--item 1
SELECT 
	Orders.OrderID AS OrderID,
    OrderDetails.OrderDetailID AS DetailsID,
	Customers.ContactName AS Customer, 
    Customers.Address AS CustomerAddress,
    Employees.FirstName AS Employee
FROM 
	(((Orders INNER JOIN OrderDetails ON OrderDetails.OrderID = Orders.OrderID)
    INNER JOIN Employees ON Employees.EmployeeID = Orders.EmployeeID)
    INNER JOIN Customers ON Customers.CustomerID = Orders.CustomerID);

--item 2
SELECT
	Categories.CategoryName AS Categoria,
    COUNT(Products.ProductID) AS QtdProdutos
FROM Categories
INNER JOIN Products ON Products.CategoryID = Categories.CategoryID
GROUP BY CategoryName;

--item 3
SELECT
	Categories.CategoryName,
    AVG(Products.Price) AS AveragePrice
FROM Products
INNER JOIN Categories ON Categories.CategoryID = Products.CategoryID
GROUP BY CategoryName
ORDER BY AveragePrice;

--item 4
SELECT OrderID, SUM(Price*quantity) from (products inner join orderdetails on orderdetails.productid = products.productid)
group by orderid;