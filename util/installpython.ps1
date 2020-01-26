# Run with Set-ExecutionPolicy Bypass -Scope Process -Force; installpython.ps1
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco install python3 -y
