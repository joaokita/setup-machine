#Requires -RunAsAdministrator

<#
.SYNOPSIS
    Setup script for installing development environment tools and dependencies
.DESCRIPTION
    This script automates the installation of common development tools and utilities
    for a complete development stack on Windows machines.
.NOTES
    Author: João Kita
    This script requires Administrator privileges to run
#>

# Set error action preference
$ErrorActionPreference = "Stop"

# Function to write colored output
function Write-ColorOutput($ForegroundColor) {
    $fc = $host.UI.RawUI.ForegroundColor
    $host.UI.RawUI.ForegroundColor = $ForegroundColor
    if ($args) {
        Write-Output $args
    }
    $host.UI.RawUI.ForegroundColor = $fc
}

# Function to check if running as administrator
function Test-Administrator {
    $user = [Security.Principal.WindowsIdentity]::GetCurrent()
    $principal = New-Object Security.Principal.WindowsPrincipal($user)
    return $principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
}

# Function to install Chocolatey if not present
function Install-Chocolatey {
    Write-ColorOutput Yellow "Checking for Chocolatey..."
    if (!(Get-Command choco -ErrorAction SilentlyContinue)) {
        Write-ColorOutput Green "Installing Chocolatey..."
        Set-ExecutionPolicy Bypass -Scope Process -Force
        [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
        Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
        
        # Refresh environment variables
        $env:ChocolateyInstall = Convert-Path "$((Get-Command choco).Path)\..\.."
        Import-Module "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
        refreshenv
    } else {
        Write-ColorOutput Green "Chocolatey is already installed."
    }
}

# Function to install a package via Chocolatey
function Install-ChocoPackage {
    param (
        [string]$PackageName,
        [string]$DisplayName = $PackageName
    )
    
    Write-ColorOutput Yellow "Installing $DisplayName..."
    try {
        choco install $PackageName -y
        Write-ColorOutput Green "$DisplayName installed successfully."
    } catch {
        Write-ColorOutput Red "Failed to install $DisplayName : $_"
    }
}

# Main installation script
try {
    Write-ColorOutput Cyan "=========================================="
    Write-ColorOutput Cyan "  Development Environment Setup Script"
    Write-ColorOutput Cyan "=========================================="
    Write-Output ""

    # Check if running as administrator
    if (!(Test-Administrator)) {
        Write-ColorOutput Red "This script must be run as Administrator!"
        Write-ColorOutput Red "Please right-click and select 'Run as Administrator'"
        exit 1
    }

    # Install Chocolatey package manager
    Install-Chocolatey
    Write-Output ""

    # Core Development Tools
    Write-ColorOutput Cyan "Installing Core Development Tools..."
    Install-ChocoPackage "git" "Git"
    Install-ChocoPackage "vscode" "Visual Studio Code"
    Install-ChocoPackage "docker-desktop" "Docker Desktop"
    Write-Output ""

    # Programming Languages & Runtimes
    Write-ColorOutput Cyan "Installing Programming Languages & Runtimes..."
    Install-ChocoPackage "nodejs" "Node.js"
    Install-ChocoPackage "python" "Python"
    Install-ChocoPackage "dotnet-sdk" ".NET SDK"
    Write-Output ""

    # Database Tools
    Write-ColorOutput Cyan "Installing Database Tools..."
    Install-ChocoPackage "postgresql" "PostgreSQL"
    Install-ChocoPackage "mysql" "MySQL"
    Write-Output ""

    # Developer Utilities
    Write-ColorOutput Cyan "Installing Developer Utilities..."
    Install-ChocoPackage "postman" "Postman"
    Install-ChocoPackage "insomnia-rest-api-client" "Insomnia"
    Install-ChocoPackage "notepadplusplus" "Notepad++"
    Install-ChocoPackage "7zip" "7-Zip"
    Install-ChocoPackage "curl" "cURL"
    Install-ChocoPackage "wget" "Wget"
    Write-Output ""

    # Terminal & Shell Tools
    Write-ColorOutput Cyan "Installing Terminal & Shell Tools..."
    Install-ChocoPackage "microsoft-windows-terminal" "Windows Terminal"
    Install-ChocoPackage "powershell-core" "PowerShell Core"
    Write-Output ""

    # Browsers
    Write-ColorOutput Cyan "Installing Web Browsers..."
    Install-ChocoPackage "googlechrome" "Google Chrome"
    Install-ChocoPackage "firefox" "Mozilla Firefox"
    Write-Output ""

    # Communication Tools
    Write-ColorOutput Cyan "Installing Communication Tools..."
    Install-ChocoPackage "slack" "Slack"
    Install-ChocoPackage "discord" "Discord"
    Write-Output ""

    # Additional Tools
    Write-ColorOutput Cyan "Installing Additional Tools..."
    Install-ChocoPackage "obs-studio" "OBS Studio"
    Install-ChocoPackage "vlc" "VLC Media Player"
    Write-Output ""

    Write-ColorOutput Green "=========================================="
    Write-ColorOutput Green "  Installation Complete!"
    Write-ColorOutput Green "=========================================="
    Write-Output ""
    Write-ColorOutput Yellow "Note: Some applications may require a system restart to complete installation."
    Write-ColorOutput Yellow "Please restart your computer when convenient."
    Write-Output ""

} catch {
    Write-ColorOutput Red "An error occurred during installation: $_"
    Write-ColorOutput Red "Stack Trace: $($_.ScriptStackTrace)"
    exit 1
}

# Pause before closing
Write-Output ""
Write-ColorOutput Cyan "Press any key to exit..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
