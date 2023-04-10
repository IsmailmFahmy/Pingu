cd /d "%~dp0"
copy "Complete-Mono-Windows-Compatible.ttf" %systemroot%\fonts
copy "Complete-Mono.ttf" %systemroot%\fonts
copy "Complete-Windows-Compatible.ttf" %systemroot%\fonts
copy "Complete.ttf" %systemroot%\fonts




reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "Caskaydia Cove Nerd Font Complete Mono Windows Compatible (TrueType)" /t REG_SZ /d "Complete Mono Windows Compatible.ttf" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "Caskaydia Cove Nerd Font Complete Mono (TrueType)" /t REG_SZ /d "Complete Mono.ttf" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "Caskaydia Cove Nerd Font Complete Windows Compatible (TrueType)" /t REG_SZ /d "Complete Windows Compatible.ttf" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "Caskaydia Cove Nerd Font Complete (TrueType)" /t REG_SZ /d "Complete.ttf" /f