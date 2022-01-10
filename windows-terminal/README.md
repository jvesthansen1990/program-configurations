# Do you want your Windows Terminal to look like this, and have the features shown in the below pictures???


## <ins>Implementing awesome looking Windows Terminal with icons and colors</ins>

*First i would like to thank Anup Aglawe and Jung-Hyun Nam for being the inspiration for this guide. It is mostly made so i can re-create configurations on other computers. But if anyone wants the same look as me feel free do what i have done.*

**Also Check out Anup Aglawe and Jung-Hyun Nam's guides here:**

[Beautify your Windows Terminal 🦄](https://dev.to/anupa/beautify-your-windows-terminal-1la8) - *by Anup Aglawe*

[Make Your PowerShell 7 Truly Powerful](https://medium.com/rkttu/make-your-powershell-7-truly-powerful-eb56b3fbe37f) - *by Jung-Hyun Nam*

## Prerequisites:

### <ins>Chocolatey:</ins>
To install chocolatey on Windows with **PowerShell** use the following command:
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```
### <ins>Install specific CaskaydiaCove Nerd Fonts</ins>
Download and install [CaskaydiaCove Nerd Fonts](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/CascadiaCode/Regular/complete/Caskaydia%20Cove%20Regular%20Nerd%20Font%20Complete.otf)


## <ins>Install PowerShell Modules</ins>
Open a PowerShell windows and run the following commands to install the needed modules:
```powershell
Install-Module 'psfzf' -Scope Allusers
Install-Module 'posh-git' -Scope Allusers
Install-Module 'oh-my-posh' -Scope Allusers
```

## <ins>Install fzf </ins>

```
choco install fzf
```

## <u>PowerShell Intellisense </u>
powershell predictive intellisense
https://devblogs.microsoft.com/powershell/announcing-psreadline-2-1-with-predictive-intellisense/
Install-Module PSReadLine -RequiredVersion 2.1.0 -Scope Allusers
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -Colors @{ InlinePrediction = '#2F7004'}
Set-PSReadLineOption -Colors @{ InlinePrediction = '#ff033e'}




## Customize PowerShell Prompt to load theme and have intellisense
In a PowerShell terminal write run:
```powershell
code $PROFILE
```

In the file write the following: <br>
Microsoft.PowerShell_profile.ps1
```powershell
Import-Module 'posh-git'
Import-Module 'oh-my-posh'
Set-PoshPrompt -Theme jtracey93
Remove-PSReadlineKeyHandler 'Ctrl+r'
Remove-PSReadlineKeyHandler 'Ctrl+t'
Import-Module psfzf
# Override PSReadLine's history search
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' `
                -PSReadlineChordReverseHistory 'Ctrl+r'

# Enable intellisense
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle InlineView
```
