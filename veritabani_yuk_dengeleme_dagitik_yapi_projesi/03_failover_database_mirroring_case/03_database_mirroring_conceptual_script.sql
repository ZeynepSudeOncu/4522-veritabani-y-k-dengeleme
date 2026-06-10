SELECT 
    DB_NAME(database_id) AS database_name,
    mirroring_state_desc,
    mirroring_role_desc,
    mirroring_safety_level_desc,
    mirroring_witness_state_desc
FROM sys.database_mirroring
WHERE database_id = DB_ID('AdventureWorksLT2022');
GO
