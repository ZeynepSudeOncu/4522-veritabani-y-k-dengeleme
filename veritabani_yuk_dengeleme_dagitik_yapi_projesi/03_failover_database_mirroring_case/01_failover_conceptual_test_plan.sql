SELECT 
    @@SERVERNAME AS current_server,
    DB_NAME() AS current_database,
    SYSDATETIME() AS test_time;
GO
