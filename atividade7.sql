--item 1
UPDATE Products
SET Price = Price * 1.20
WHERE CategoryID IN
	(SELECT CategoryID FROM Categories WHERE CategoryName = "Seafood");