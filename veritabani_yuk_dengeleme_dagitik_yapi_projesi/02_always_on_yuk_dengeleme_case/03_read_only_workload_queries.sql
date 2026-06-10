USE AdventureWorksLT2022;
GO

SELECT TOP 10
    c.CustomerID,
    c.FirstName,
    c.LastName,
    COUNT(soh.SalesOrderID) AS order_count,
    SUM(soh.TotalDue) AS total_spending
FROM SalesLT.Customer c
LEFT JOIN SalesLT.SalesOrderHeader soh ON c.CustomerID = soh.CustomerID
GROUP BY c.CustomerID, c.FirstName, c.LastName
ORDER BY total_spending DESC;
GO

SELECT TOP 10
    p.ProductID,
    p.Name AS product_name,
    SUM(sod.OrderQty) AS total_quantity,
    SUM(sod.LineTotal) AS total_sales
FROM SalesLT.Product p
INNER JOIN SalesLT.SalesOrderDetail sod ON p.ProductID = sod.ProductID
GROUP BY p.ProductID, p.Name
ORDER BY total_sales DESC;
GO

SELECT 
    a.City,
    a.CountryRegion,
    COUNT(ca.CustomerID) AS customer_count
FROM SalesLT.Address a
INNER JOIN SalesLT.CustomerAddress ca ON a.AddressID = ca.AddressID
GROUP BY a.City, a.CountryRegion
ORDER BY customer_count DESC;
GO
