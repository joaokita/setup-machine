# Devs
# Install Chocolatey
#Set-ExecutionPolicy Bypass -Scope Process -Force
#[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
#Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco install --accept-license --confirm --allow-unofficial --ignore-checksum nerd-fonts-CascadiaCode
choco install --accept-license --confirm --allow-unofficial --ignore-checksum cmdermini

winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Microsoft.PowerShell
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Microsoft.WindowsTerminal.Preview
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id JanDeDobbeleer.OhMyPosh
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id OpenTofu.Tofu
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Helm.Helm
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Microsoft.AzureCLI
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id ducaale.xh
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Microsoft.Git
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Microsoft.Sysinternals.Suite

winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id DBeaver.DBeaver.Community
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Microsoft.VisualStudioCode
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Microsoft.VisualStudioCode.CLI
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Microsoft.VisualStudio.Locator
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Microsoft.VisualStudio.2022.Professional.Preview
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Microsoft.ServiceFabricSDK
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Microsoft.ServiceFabricRuntime
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Microsoft.ServiceFabric.LocalClusterManager

winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Postman.Postman
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Microsoft.AzureStorageExplorer
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Telerik.Fiddler.Classic
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Notepad++.Notepad++
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id Docker.DockerDesktop
winget install --silent --scope machine --accept-package-agreements --accept-source-agreements -e --id qishibo.AnotherRedisDesktopManager