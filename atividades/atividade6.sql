--item 1
DELETE FROM Categories;

--item 2
DELETE FROM Orders
WHERE OrderID IN
	(SELECT OrderID FROM OrderDetails WHERE ProductID IN
		(SELECT ProductID FROM Products WHERE SupplierID IN
			(SELECT SupplierID FROM Suppliers WHERE Country = "Brazil")));

	--item 3
DELETE FROM Customers WHERE Country = "Germany";