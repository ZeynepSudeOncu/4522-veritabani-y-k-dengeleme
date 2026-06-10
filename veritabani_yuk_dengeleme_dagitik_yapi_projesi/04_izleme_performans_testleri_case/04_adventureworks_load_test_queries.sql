
USE AdventureWorksLT2022;
GO

SELECT 
    p.ProductCategoryID,
    pc.Name AS category_name,
    COUNT(p.ProductID) AS product_count,
    AVG(p.ListPrice) AS avg_price,
    MAX(p.ListPrice) AS max_price
FROM SalesLT.Product p
LEFT JOIN SalesLT.ProductCategory pc 
    ON p.ProductCategoryID = pc.ProductCategoryID
GROUP BY p.ProductCategoryID, pc.Name
ORDER BY product_count DESC;
GO

SELECT 
    YEAR(soh.OrderDate) AS order_year,
    MONTH(soh.OrderDate) AS order_month,
    COUNT(*) AS order_count,
    SUM(soh.TotalDue) AS total_due
FROM SalesLT.SalesOrderHeader soh
GROUP BY YEAR(soh.OrderDate), MONTH(soh.OrderDate)
ORDER BY order_year, order_month;
GO

SELECT 
    c.CustomerID,
    c.FirstName,
    c.LastName,
    a.City,
    a.CountryRegion
FROM SalesLT.Customer c
INNER JOIN SalesLT.CustomerAddress ca ON c.CustomerID = ca.CustomerID
INNER JOIN SalesLT.Address a ON ca.AddressID = a.AddressID
ORDER BY c.CustomerID;
GO
