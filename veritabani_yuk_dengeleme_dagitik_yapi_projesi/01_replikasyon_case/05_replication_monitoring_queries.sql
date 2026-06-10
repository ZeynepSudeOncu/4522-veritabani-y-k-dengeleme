SELECT 
    name,
    is_published,
    is_subscribed,
    is_merge_published,
    is_distributor
FROM sys.databases
WHERE name LIKE '%AdventureWorks%';
GO


USE msdb;
GO

SELECT TOP 50
    j.name AS job_name,
    j.enabled,
    h.run_date,
    h.run_time,
    h.run_status,
    h.message
FROM dbo.sysjobs j
LEFT JOIN dbo.sysjobhistory h ON j.job_id = h.job_id
WHERE j.name LIKE '%repl%' OR j.name LIKE '%AdventureWorks%'
ORDER BY h.instance_id DESC;
GO
