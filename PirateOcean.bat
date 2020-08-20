@echo off
echo Installing Bootstrap + Running Wallet
echo Removing OLD BLOCKS AND CHAINSTATE FOLDERS
rd /s /q %appdata%\komodo\PIRATE\blocks
rd /s /q %appdata%\komodo\PIRATE\chainstate

echo DOWNLOADING BOOTSTRAP
wget64.exe -N https://eu.bootstrap.dexstats.info/PIRATE-bootstrap.tar.gz

echo DOWNLOADING Z-ZIP
wget64.exe -N https://www.7-zip.org/a/7z1900-x64.exe

echo DOWNLOADING PIRATEOCEAN
wget64.exe -N https://github.com/PirateNetwork/PirateOcean/releases/download/release_113fbc7/pirate113fbc7_win.zip

echo INSTALLING 7-ZIP
7z1900-x64.exe /S

echo EXTRACTING BOOTSTRAP
"C:\Program Files\7-Zip\7z" e PIRATE-bootstrap.tar.gz -o%appdata%\komodo\PIRATE\

echo EXTRACTING BOOTSTRAP
"C:\Program Files\7-Zip\7z" x %appdata%\komodo\PIRATE\PIRATE-bootstrap.tar -o%appdata%\komodo\PIRATE\

echo EXTRACTING PIRATEOCEAN
"C:\Program Files\7-Zip\7z" e pirate113fbc7_win.zip -o"%~dp0" *.exe -r -y > nul

echo LAUNCING PIRATEOCEAN
start pirate-qt-win.exe



