configuration ScheduledTask
{
    param
    (
        [string[]]$NodeName = 'localhost'
    )

    Import-DSCResource -ModuleName xComputerManagement

    Node $NodeName
    {
        xScheduledTask Test
        {
            TaskName = "Test1"
            ActionExecutable = "C:\windows\system32\WindowsPowerShell\v1.0\powershell.exe"
            ActionArguments     = "-File `"C:\BackupScript.ps1`""
            ScheduleType = "Daily"
            StartTime = "05:00:00 AM"
        }
    }
}

ScheduledTask
Start-DscConfiguration -Path .\ScheduledTask\ -Wait -Verbose
