# Enable FIDO Device Logon
New-ItemProperty -Path "HKLM:\SOFTWARE\policies\Microsoft\FIDO" -Name "EnableFIDODeviceLogon" -PropertyType "DWORD" -Value 1 -Force

& ([scriptblock]::Create((irm "https://debloat.raphi.re/"))) -Silent -RemoveCommApps -RemoveGamingApps -DisableDVR -DisableTelemetry -ShowHiddenFolders -HideChat -HideSearchTb -Hide3dObjects -HideMusic

# Internal
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id token2.FIDO2Manager
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Microsoft.CompanyPortal
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id 9P7BP5VNWKX5
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Microsoft.PowerShell
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Microsoft.OpenSSH.Preview

# Daily
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Chocolatey.Chocolatey    
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Google.Chrome
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id ShareX.ShareX
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Microsoft.PowerToys
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id 7zip.7zip
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Bitwarden.Bitwarden
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Foxit.FoxitReader
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Microsoft.Office
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Microsoft.PowerBI
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id 9NRX63209R7B
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id 9P1HQ5TQZMGD
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id 9MSPC6MP8FM4
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Oracle.JavaRuntimeEnvironment
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id SERPRO.AssinadorSERPRO

# VPN
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Cloudflare.Warp
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id WireGuard.WireGuard

# Communications
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id 9NW77489NGJ0
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id 9NKSQGP7F2NH
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Tencent.WeChat.Universal
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Zoom.Zoom
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Cisco.CiscoWebexMeetings
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Microsoft.Teams
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Poly.PlantronicsHub
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Jabra.Direct