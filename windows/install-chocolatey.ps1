#
# install-chocolatey.ps1
#
# Chocolatey をインストールし、そのとき Chocolatey でインストールしていたものをインストールします。
# 


Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# choco install you-get -y
choco install 7zip -y
choco install chocolatey -y
choco install chocolatey-core.extension -y
choco install ConEmu -y
choco install dejavufonts -y
choco install FiraCode -y
choco install firefox -y
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
choco install youtube-dl -y
