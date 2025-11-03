# setup-machine

PowerShell script for automating the setup of a complete development environment on Windows machines.

## Description

This repository contains a PowerShell script (`setup.ps1`) that automates the installation of all necessary tools and applications for a modern development stack. The script uses Chocolatey package manager to install and configure various development tools, programming languages, utilities, and applications.

## What Gets Installed

### Core Development Tools
- Git
- Visual Studio Code
- Docker Desktop

### Programming Languages & Runtimes
- Node.js
- Python
- .NET SDK

### Database Tools
- PostgreSQL
- MySQL

### Developer Utilities
- Postman
- Insomnia REST API Client
- Notepad++
- 7-Zip
- cURL
- Wget

### Terminal & Shell Tools
- Windows Terminal
- PowerShell Core

### Web Browsers
- Google Chrome
- Mozilla Firefox

### Communication Tools
- Slack
- Discord

### Additional Tools
- OBS Studio
- VLC Media Player

## Prerequisites

- Windows 10/11
- Administrator privileges
- Internet connection

## Usage

1. Clone this repository or download the `setup.ps1` script
2. Right-click on `setup.ps1` and select **"Run with PowerShell"** or **"Run as Administrator"**
3. If prompted about execution policy, allow the script to run
4. Wait for the installation to complete
5. Restart your computer when prompted

### Alternative: Run from PowerShell

```powershell
# Open PowerShell as Administrator and run:
Set-ExecutionPolicy Bypass -Scope Process -Force
.\setup.ps1
```

## Customization

You can modify the `setup.ps1` script to add or remove packages according to your needs. Simply edit the package names in the respective sections of the script.

To find more packages available through Chocolatey, visit: https://community.chocolatey.org/packages

## Notes

- The script requires Administrator privileges to install software
- Some applications may require a system restart to complete installation
- Installation time depends on your internet connection speed
- The script will automatically install Chocolatey if it's not already present

## Troubleshooting

If you encounter any issues:

1. Ensure you're running PowerShell as Administrator
2. Check your internet connection
3. Verify that your system meets the prerequisites
4. Review the error messages for specific package installation failures

## License

This is a personal setup script. Feel free to use and modify it for your own needs.
