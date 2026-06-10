-- SQL Server bağlantı ve session izleme

SELECT 
    s.session_id,
    s.login_name,
    s.host_name,
    s.program_name,
    s.status,
    s.cpu_time,
    s.memory_usage,
    s.reads,
    s.writes,
    s.logical_reads,
    s.login_time
FROM sys.dm_exec_sessions s
WHERE s.is_user_process = 1
ORDER BY s.logical_reads DESC;
GO

SELECT 
    c.session_id,
    c.connect_time,
    c.client_net_address,
    c.local_net_address,
    c.net_transport,
    c.protocol_type
FROM sys.dm_exec_connections c
ORDER BY c.connect_time DESC;
GO
