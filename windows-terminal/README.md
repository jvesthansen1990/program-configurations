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
### <ins>Install specific Cascadia Code PL with chocolatey</ins>

```
choco install cascadiacodepl
```



alternatively install all Cascadia Fonts



```
choco install cascadiafonts
```

## <ins>Install PowerShell Modules</ins>
Open a PowerShell windows and run the following commands to install the needed modules:
```powershell
Install-Module 'psfzf'
Install-Module 'posh-git'
Install-Module 'oh-my-posh'
```

## <ins>Install fzf </ins>

```
choco install fzf
```

## <u>PowerShell Intellisense </u>
powershell predictive intellisense
https://devblogs.microsoft.com/powershell/announcing-psreadline-2-1-with-predictive-intellisense/
Install-Module PSReadLine -RequiredVersion 2.1.0
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -Colors @{ InlinePrediction = '#2F7004'}
Set-PSReadLineOption -Colors @{ InlinePrediction = '#ff033e'}




## Customize PowerShell Prompt
In a PowerShell terminal write run:
```powershell
code $PROFILE
```

In the file write the following: <br>
Microsoft.PowerShell_profile.ps1
```powershell
Import-Module 'posh-git'
Import-Module 'oh-my-posh'
Set-Prompt
Set-Theme Paradox
Remove-PSReadlineKeyHandler 'Ctrl+r'
Remove-PSReadlineKeyHandler 'Ctrl+t'
Import-Module psfzf
```

### <ins>Adding Icons Rainbows'n'Unicorns<ins>


Go to PSModules directoru: **documents\\WindowsPowerShell\\Modules\\oh-my-posh\\newsestVersion\\Themes**

Open the **Paradox** file, and scroll down to the bottom and update the following lines.

```
$sl.PromptSymbols.StartSymbol = [char]::ConvertFromUtf32(0x01F984) + [char]::ConvertFromUtf32(0x0001F525) + ' '

$sl.PromptSymbols.PromptIndicator = [char]::ConvertFromUtf32(0x01F680) +[char]::ConvertFromUtf32(0x276F)    
```


```diff
- red text
+ Green Text

```