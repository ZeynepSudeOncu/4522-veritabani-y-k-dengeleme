USE AdventureWorksLT2022;
GO

BEGIN TRAN;

UPDATE SalesLT.Customer
SET ModifiedDate = SYSDATETIME()
WHERE CustomerID = 1;

SELECT 
    CustomerID,
    FirstName,
    LastName,
    ModifiedDate
FROM SalesLT.Customer
WHERE CustomerID = 1;

ROLLBACK;
GO
