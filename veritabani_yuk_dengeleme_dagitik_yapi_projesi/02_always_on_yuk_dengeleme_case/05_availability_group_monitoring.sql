SELECT 
    ag.name AS availability_group_name,
    ar.replica_server_name,
    ars.role_desc,
    ars.connected_state_desc,
    ars.synchronization_health_desc
FROM sys.availability_groups ag
INNER JOIN sys.availability_replicas ar 
    ON ag.group_id = ar.group_id
INNER JOIN sys.dm_hadr_availability_replica_states ars 
    ON ar.replica_id = ars.replica_id;
GO

SELECT 
    DB_NAME(database_id) AS database_name,
    synchronization_state_desc,
    synchronization_health_desc,
    is_suspended,
    suspend_reason_desc
FROM sys.dm_hadr_database_replica_states
WHERE DB_NAME(database_id) = 'AdventureWorksLT2022';
GO
