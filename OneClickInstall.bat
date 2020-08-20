certutil.exe -urlcache -split -f "https://github.com/PirateNetwork/PirateOcean/releases/download/v4.0.0-alpha1/fetch-params.bat" fetch-params.bat
certutil.exe -urlcache -split -f "https://github.com/pirateprinters/pirateoceaninstaller/blob/master/PirateOcean.bat" PirateOcean.bat
start fetch-params.bat
start PirateOcean.bat