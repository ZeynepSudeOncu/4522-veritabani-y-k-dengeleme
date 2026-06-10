USE AdventureWorksLT2022;
GO

SELECT 
    @@SERVERNAME AS active_sql_server,
    DB_NAME() AS active_database,
    SYSDATETIME() AS validation_time;
GO

SELECT COUNT(*) AS customer_count FROM SalesLT.Customer;
SELECT COUNT(*) AS product_count FROM SalesLT.Product;
SELECT COUNT(*) AS order_count FROM SalesLT.SalesOrderHeader;
GO

SELECT TOP 10
    SalesOrderID,
    OrderDate,
    CustomerID,
    TotalDue
FROM SalesLT.SalesOrderHeader
ORDER BY SalesOrderID DESC;
GO
