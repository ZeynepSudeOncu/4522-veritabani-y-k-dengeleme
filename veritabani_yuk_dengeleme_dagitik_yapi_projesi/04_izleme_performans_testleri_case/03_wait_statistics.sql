SELECT TOP 30
    wait_type,
    waiting_tasks_count,
    wait_time_ms,
    max_wait_time_ms,
    signal_wait_time_ms
FROM sys.dm_os_wait_stats
WHERE wait_type NOT LIKE '%SLEEP%'
  AND wait_type NOT LIKE 'BROKER%'
  AND wait_type NOT LIKE 'XE%'
ORDER BY wait_time_ms DESC;
GO
