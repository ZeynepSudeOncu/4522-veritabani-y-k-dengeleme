USE master;
GO

SELECT 
    name AS database_name,
    state_desc,
    recovery_model_desc,
    compatibility_level
FROM sys.databases
WHERE name = 'AdventureWorksLT2022';
GO

USE AdventureWorksLT2022;
GO

SELECT 
    SCHEMA_NAME(t.schema_id) AS schema_name,
    t.name AS table_name,
    p.rows AS row_count
FROM sys.tables t
INNER JOIN sys.partitions p ON t.object_id = p.object_id
WHERE p.index_id IN (0,1)
GROUP BY t.schema_id, t.name, p.rows
ORDER BY schema_name, table_name;
GO
