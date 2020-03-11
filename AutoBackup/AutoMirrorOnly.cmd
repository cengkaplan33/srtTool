set GitRepository=C:\Sandbox
set GitCmd=c:\Program Files\Git\bin\Git.exe
set SqlServer=.\SQLEXPRESS
set StoredProcDB=NT
set DBBackupPath=c:\Sandbox\Backups\
rem sqlcmd -S %SqlServer% -Q "USE %StoredProcDB%; EXEC BackupDatabases @BackupDir='%DBBackupPath%', @DatabaseName='%StoredProcDB%', @BackupType=0"
rem sqlcmd -S %SqlServer% -Q "USE %StoredProcDB%; EXEC BackupDatabases @BackupDir='%DBBackupPath%', @DatabaseName='nt_sysadmin', @BackupType=0"
cd %GitRepository%
rem "%GitCmd%" add --all
rem "%GitCmd%" commit -m AutoBackup
"%GitCmd%" push --mirror c:\Volkan\Backups\LocalSandbox
"%GitCmd%" push --mirror \\\\ntposdb2\d$\Volkan\Backups\LocalSandbox