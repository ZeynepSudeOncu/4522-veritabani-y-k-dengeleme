USE AdventureWorksLT2022;
GO

BEGIN TRAN;

UPDATE SalesLT.Customer
SET CompanyName = CompanyName
WHERE CustomerID = 1;

COMMIT;
GO

SELECT 
    CustomerID,
    FirstName,
    LastName,
    CompanyName,
    ModifiedDate
FROM SalesLT.Customer
WHERE CustomerID = 1;
GO

