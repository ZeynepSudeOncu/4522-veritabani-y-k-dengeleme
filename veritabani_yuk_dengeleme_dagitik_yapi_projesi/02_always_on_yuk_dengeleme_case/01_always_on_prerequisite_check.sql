SELECT 
    SERVERPROPERTY('MachineName') AS machine_name,
    SERVERPROPERTY('ServerName') AS server_name,
    SERVERPROPERTY('Edition') AS edition,
    SERVERPROPERTY('ProductVersion') AS product_version,
    SERVERPROPERTY('IsHadrEnabled') AS is_hadr_enabled;
GO

SELECT 
    name,
    recovery_model_desc,
    state_desc
FROM sys.databases
WHERE name = 'AdventureWorksLT2022';
GO

ALTER DATABASE AdventureWorksLT2022 SET RECOVERY FULL;
GO
