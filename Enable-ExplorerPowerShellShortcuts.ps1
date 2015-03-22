# Add "Open PowerShell here" shortcuts to Windows Explorer context menus in
# current directory and currently selected directory.

$pspath = "$PSHome\powershell.exe -Noexit -Nologo"

# Add shortcut for selected directory
New-Item HKLM:\SOFTWARE\Classes\Directory\shell\powershell -force
Set-Item HKLM:\SOFTWARE\Classes\Directory\shell\powershell "Open PowerShell Here"
New-item HKLM:\SOFTWARE\Classes\Directory\shell\powershell\command -force
Set-item HKLM:\SOFTWARE\Classes\Directory\shell\powershell\command "$pspath -Command Set-Location '%L'"

# Add shortcut for current directory
New-Item HKLM:\SOFTWARE\Classes\Directory\Background\shell\powershell -force
Set-Item HKLM:\SOFTWARE\Classes\Directory\Background\shell\powershell "Open PowerShell Here"
New-item HKLM:\SOFTWARE\Classes\Directory\Background\shell\powershell\command -force
Set-item HKLM:\SOFTWARE\Classes\Directory\Background\shell\powershell\command "$pspath -Command Set-Location '%V'"