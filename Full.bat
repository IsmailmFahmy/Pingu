::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHreyHcjLQlHcCKDNGajOpEZ++Pv4Pq7jEgKFOQwdIveyIigJeUX70Gkc58h02lmu8QcFVZofwG/azMVuX5mt3CEVw==
::fBE1pAF6MU+EWHreyHcjLQlHcCKDNGajOpEZ++Pv4Pq7jEgKFOQwdIveyIigJeUX70Gkc58h02lmu8QcFVZofwG/azMBpXpQt0jl
::fBE1pAF6MU+EWHreyHcjLQlHcCKDNGajOpEZ++Pv4Pq7jEgKFOQwdIveyIigJeUX70Gkc58h02lmu8QcFVZofwG/azMcjFhh+GWVJ9/8
::fBE1pAF6MU+EWHreyHcjLQlHcCKDNGajOpEZ++Pv4Pq7jEgKFOQwdIveyIigJeUX70Gkc58h02lmu8QcFVZofwG/azMcnkdmiUWGI86KshvoRUbH5Eokew==
::fBE1pAF6MU+EWHreyHcjLQlHcCKDNGajOpEZ++Pv4Pq7jEgKFOQwdIveyIigJeUX70Gkc58h02lmu8QcFVZofwG/azMGrGhQs3eNEsmK/QzsTig=
::fBE1pAF6MU+EWHreyHcjLQlHcCKDNGajOpEZ++Pv4Pq7jEgKFOQwdIveyIigJeUX70Gkc58h02lmu8QcFVZofwG/azMGrGlLpXCXLoqsoQrnT1qM6Eg1CCtmgmSw
::fBE1pAF6MU+EWHreyHcjLQlHcCKDNGajOpEZ++Pv4Pq7jEgKFOQwdIveyIigJeUX70Gkc58h02lmu8QcFVZofwG/azMArHxPv2qEO4mMoF6B
::fBE1pAF6MU+EWHreyHcjLQlHcCKDNGajOpEZ++Pv4Pq7jEgKFOQwdIveyIigJeUX70Gkc58h02lmu8QcFVZofwG/azMgrHxPv2qEO5bSsh/xUig=
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFD1VRAmbAE+1BaAR7ebv/NauoUITR94ceZuV07eBQA==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF65
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF65
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpSI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQILDg5YQDni
::ZQ05rAF9IBncCkqN+0xwdVtvahGOMFba
::ZQ05rAF9IAHYFVzEqQIAIRVTWWQ=
::eg0/rx1wNQPfEVWB+kM9LVsJDDSLMmyvZg==
::fBEirQZwNQPfEVWB+kM9LVsJDDSLMmyvZg==
::cRolqwZ3JBvQF1fEqQISKQhdT0S1NWW+CaIPqNv++/+X4nY7Qe4zRe8=
::dhA7uBVwLU+EWHCX+UM5JFtyTQyPJQs=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATE3VE9KRJYDCKDNGajZg==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFD1VRAmbAE+/Fb4I5/jH3+OJpVhdb8QqdIPmlLGWJYA=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983

::============================== START ==============================

mode con: cols=70 lines=25
color 09

::============================== REGISTRY IMPORT ==============================

title  Importing Registry Preferences && cls
reg import "Registry-Preferences.reg"

::============================== WINDOWS ACTIVATION ==============================

title  Activating Windows Using HWID... && cls
start /b /wait cmd /c Call "HWID_Activation.bat"

::============================== CHOCOLATEY INSALL ==============================

title  Installing Chocolatey && cls
Powershell Set-PackageSource -Name chocolatey -Trusted

::============================== ENVIROMENT REFRESH ==============================

title  Refreshing Enviroment && cls
call "RefreshEnv.cmd"

::============================== APPDATA COPY ==============================

title  Extracting AppData Preferences && cls
robocopy "AppData" "%AppData%\.." /e /w:5 /r:2 /COPY:DATSOU /DCOPY:DAT /MT

::============================== PACKAGE MANAGAER INSTALL ==============================

title Installing  App Installer / VCLib && cls
start /b /wait cmd /c Call "UltraL\Package installer\Add-Store.cmd"

::============================== SOFTWARE INSTALL ==============================

title  Installing Google Chrome && cls
powershell choco install googlechrome -y -r
del "C:\Users\Public\Desktop\Google Chrome.lnk"

title  Installing 7-Zip && cls
powershell choco install 7zip -y -r

title  Installing Notepad++ && cls
powershell choco install notepadplusplus -y -r

title  Installing .Net 3.5 && cls
powershell choco install dogtail.dotnet3.5sp1 -y -r

title  Installing Visual C++ Runtime && cls
powershell choco install vcredist140 -y -r

title  Installing Notepad Replacer && cls
choco install notepadreplacer --params='"/NOTEPAD:C:\Program Files\Notepad++\notepad++.exe"' -y -r

title  Installing Powershell Core && cls
powershell choco install powershell-core -y -r

title Installing Terminal && cls
powershell Add-AppxPackage "terminal1.appx"
powershell choco install microsoft-windows-terminal -y -r

title  Installing Oh My Posh && cls
powershell choco install oh-my-posh -y -r

title  Installing Everything Search && cls
powershell choco install everything -y -r
del "C:\Users\Public\Desktop\Everything.lnk"
taskkill -im Everything.exe -f

title  Installing ShareX && cls
powershell choco install sharex -y -r
del %USERPROFILE%\Desktop\ShareX.lnk
taskkill /im ShareX.exe -f

title  Installing ImageGlass && cls
powershell choco install imageglass -y -r
del "C:\Users\Public\Desktop\ImageGlass.lnk"

title  Installing MPC-BE && cls
powershell choco install mpc-be -y -r
del "%USERPROFILE%\Desktop\MPC-BE x64.lnk"

title  Installing Whatsapp && cls
powershell choco install whatsapp -y -r
del "%USERPROFILE%\Desktop\WhatsApp.lnk"

title  Installing AdwCleaner && cls
powershell choco install adwcleaner -y -r
del "C:\Users\Public\Desktop\AdwCleaner.lnk"

title  Installing Glary Utilities && cls
powershell choco install glaryutilities-free -y -r

title  Installing qBittorent && cls
powershell choco install qbittorrent -y -r

title  Installing TreeSizeFree && cls
powershell choco install treesizefree.portable -y -r

title  Installing OBS-Studio && cls
powershell choco install obs-studio -y -r
del "C:\Users\Public\Desktop\OBS Studio.lnk"

title  Installing Python && cls
powershell choco install python -y -r

title  Installing Pycharm Community && cls
powershell choco install pycharm-community -y -r

title  Installing Zoom && cls
powershell choco install zoom -y -r
del "C:\Users\Public\Desktop\Zoom.lnk"

title  Installing Discord && cls
powershell choco install discord -y -r
del "C:\Users\vboxuser\Desktop\Discord.lnk"

::============================== CODEC INSTALL ==============================

title  Installing .265 Codec && cls
powershell Add-AppxPackage "HEVC.appx"

::============================== TERMINAL PROFILE INSTALL ==============================

title Installing Terminal Profiles && cls
start /b /wait cmd /c Call "UltraL\Install-Font.bat"
powershell -NoLogo -File "Terminal.ps1"

::============================== REGISTRY IMPORT ==============================

title  Importing Registry Preferences && cls
reg import "Registry-Preferences.reg"

::============================== DONE ==============================

title Done
color 75
mode con: cols=90 lines=20

echo.                                                                                     
echo.                                                                                     
echo       DDDDDDDDDDDDD                                                                  
echo       D::::::::::::DDD                                                               
echo       D:::::::::::::::DD                                                             
echo       DDD:::::DDDDD:::::D                                                            
echo         D:::::D    D:::::D     ooooooooooo    nnnn  nnnnnnnn         eeeeeeeeeeee    
echo         D:::::D     D:::::D  oo:::::::::::oo  n:::nn::::::::nn     ee::::::::::::ee  
echo         D:::::D     D:::::D o:::::::::::::::o n::::::::::::::nn   e::::::eeeee:::::ee
echo         D:::::D     D:::::D o:::::ooooo:::::o nn:::::::::::::::n e::::::e     e:::::e
echo         D:::::D     D:::::D o::::o     o::::o   n:::::nnnn:::::n e:::::::eeeee::::::e
echo         D:::::D     D:::::D o::::o     o::::o   n::::n    n::::n e:::::::::::::::::e 
echo         D:::::D     D:::::D o::::o     o::::o   n::::n    n::::n e::::::eeeeeeeeeee  
echo         D:::::D    D:::::D  o::::o     o::::o   n::::n    n::::n e:::::::e           
echo       DDD:::::DDDDD:::::D   o:::::ooooo:::::o   n::::n    n::::n e::::::::e          
echo       D:::::::::::::::DD    o:::::::::::::::o   n::::n    n::::n  e::::::::eeeeeeee  
echo       D::::::::::::DDD       oo:::::::::::oo    n::::n    n::::n   ee:::::::::::::e  
echo       DDDDDDDDDDDDD            ooooooooooo      nnnnnn    nnnnnn     eeeeeeeeeeeeee  
echo.                                                                                     
echo.                                                                                     

timeout /t 3 /nobreak >nul
