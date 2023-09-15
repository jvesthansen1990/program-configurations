# Run this script as an adminstrator
# 
# This script will install all the chocolatey packages included in the list below
# 
# Prerequisite before running this script is to install Chocolatey
# 1. Open PowerShell as an administrator
# 2. Run the following command
# 2.1 : Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) 
# 3. Done


#region Functions
function Add_Section {
    Write-Host "############"
    Write-Host "############"
}

function Add_White_Space {
    Write-Host ""
    Write-Host ""
}

#endregion


#region Execute

$packages_to_install = $('git',
                         'notepadplusplus',
                         'vscode',
                         'greenshot',
                         'zoomit',
                         'azure-cli',
                         'terraform',
                         'foxitreader',
                         'git',
                         'discord',
                         'treesizefree',
                         'powertoys',
                         'microsoft-windows-terminal',
                         'powershell-core')

# Install all packages
ForEach ($package_name in $packages_to_install)
{
    # Better log visibilty
    Add_Section
    
    Write-Host "Installing: $($package_name)"

    # Install package
    choco install $package_name -y

    # Better log visibilty
    Add_White_Space    
}

#endregion