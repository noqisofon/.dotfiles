@echo off

rem 
rem install-windows-ny.bat
rem
rem Chocolatey をインストールし、Chocolatey でインストールしていたものをインストールします。
rem 


@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"




choco install 7zip -y
choco install chocolatey -y
choco install chocolatey-core.extension -y
choco install ConEmu -y
choco install dejavufonts -y
choco install FiraCode -y
choco install git -y
choco install greenshot -y
choco install hackfont -y
choco install inconsolata -y
choco install libreoffice-fresh -y
choco install notepadplusplus -y
choco install RobotoFonts -y
choco install SourceCodePro -y
choco install vcredist2010 -y
choco install vlc -y
choco install winamp -y
choco install you-get -y
choco install youtube-dl -y
choco install firefox -y