--item 1
SELECT
	Products.ProductName AS ProductName,
	(SELECT Categories.CategoryName
	FROM Categories
	WHERE Categories.CategoryID = Products.CategoryID) AS CategoryName
FROM Products
ORDER BY ProductName

--item 2
SELECT Categories.CategoryName AS Category FROM Categories
WHERE Categories.CategoryID IN 
		(SELECT Products.CategoryID FROM Products
		WHERE Products.Price > 100);