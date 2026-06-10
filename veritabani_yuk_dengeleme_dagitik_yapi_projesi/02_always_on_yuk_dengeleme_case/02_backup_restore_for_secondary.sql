BACKUP DATABASE AdventureWorksLT2022
TO DISK = 'C:\SQLBackups\AdventureWorksLT2022_full.bak'
WITH INIT, STATS = 10;
GO

BACKUP LOG AdventureWorksLT2022
TO DISK = 'C:\SQLBackups\AdventureWorksLT2022_log.trn'
WITH INIT, STATS = 10;
GO

