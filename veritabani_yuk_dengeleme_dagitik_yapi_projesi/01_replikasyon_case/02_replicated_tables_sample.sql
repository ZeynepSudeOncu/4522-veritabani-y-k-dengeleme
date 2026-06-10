USE AdventureWorksLT2022;
GO

SELECT TOP 20
    CustomerID,
    FirstName,
    LastName,
    EmailAddress,
    Phone
FROM SalesLT.Customer
ORDER BY CustomerID;
GO

SELECT TOP 20
    ProductID,
    Name,
    ProductNumber,
    Color,
    ListPrice
FROM SalesLT.Product
ORDER BY ProductID;
GO

SELECT TOP 20
    SalesOrderID,
    OrderDate,
    CustomerID,
    TotalDue
FROM SalesLT.SalesOrderHeader
ORDER BY SalesOrderID DESC;
GO
