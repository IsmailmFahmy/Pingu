[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Set-PackageSource -Name MyNuget -NewName NewNuGet -Trusted -ProviderName NuGet -Force -Confirm:$false
Set-PSRepository -Name "PSGallery" -InstallationPolicy Trusted
Install-Module -Name Terminal-Icons -Repository PSGallery
robocopy "UltraL\LocalState" "$env:localappdata\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState" /e /w:5 /r:2 /COPY:DAT /DCOPY:DAT /MT
robocopy "UltraL\PowerShell" "$env:userprofile\AppData\Profile\PowerShell" /e /w:5 /r:2 /COPY:DAT /DCOPY:DAT /MT