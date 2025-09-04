CREATE INDEX idx_customer_location ON Customers(Location);
CREATE INDEX idx_order_date ON Orders(OrderDate);
CREATE INDEX idx_product_category ON Products(Category);




SELECT c.Name, SUM(o.TotalAmount) AS TotalSpent
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.Name
ORDER BY TotalSpent DESC
LIMIT 5;



SELECT p.Name, SUM(od.Quantity) AS TotalSold
FROM Products p
JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY p.Name
ORDER BY TotalSold DESC
LIMIT 10;


SELECT p.Category, SUM(od.Quantity * od.Price) AS Revenue
FROM Products p
JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY p.Category
ORDER BY Revenue DESC;


SELECT AVG(TotalAmount) AS AvgOrderValue
FROM Orders;


SELECT c.Name, COUNT(o.OrderID) AS OrdersCount
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.Name
HAVING COUNT(o.OrderID) > 1;


SELECT Location, COUNT(*) AS CustomerCount
FROM Customers
GROUP BY Location
ORDER BY CustomerCount DESC;


SELECT p.Category, SUM(od.Quantity * od.Price) AS Revenue
FROM Products p
JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY p.Category
ORDER BY Revenue DESC;

SELECT Category, AVG(Price) AS AvgPrice
FROM Products
GROUP BY Category
ORDER BY AvgPrice DESC;



SELECT OrderDate, COUNT(*) AS TotalOrders
FROM Orders
GROUP BY OrderDate
ORDER BY OrderDate;
