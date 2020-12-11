# Get awesome looking Windows Terminal with icons and colors

## pre-requisites

### Chocolatey:
To install chocolatey on Windows with **PowerShell** use the following command:
```
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

### Install specific Cascadia Code PL with chocolatey 

```
choco install cascadiacodepl
```

<em>alternatively install all Cascadia Font</em>

```
choco install cascadiafonts
```

## <u>Install PowerShell Modules </u>
Open a PowerShell windows and run the following commands to install the needed modules:
```
Install-Module psfzf
Install-Module posh-git
Install-Module oh-my-posh
```

## <u>Install fzf </u>

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




### Customize PowerShell Prompt
In a PowerShell terminal write run:
```
code $PROFILE
```

In the file write the following: <br>
Microsoft.PowerShell_profile.ps1
```
Import-Module posh-git
Import-Module oh-my-posh
Set-Prompt
Set-Theme Paradox
Remove-PSReadlineKeyHandler 'Ctrl+r'
Remove-PSReadlineKeyHandler 'Ctrl+t'
Import-Module psfzf
```

### <u>Adding Icons Rainbows'n'Unicorns </u>


Go to PSModules directoru: **documents\\WindowsPowerShell\\Modules\\oh-my-posh\\newsestVersion\\Themes**

Open the **Paradox** file, and scroll down to the bottom and update the following lines.

```
$sl.PromptSymbols.StartSymbol = [char]::ConvertFromUtf32(0x01F984) + [char]::ConvertFromUtf32(0x0001F525) + ' '

$sl.PromptSymbols.PromptIndicator = [char]::ConvertFromUtf32(0x01F680) +[char]::ConvertFromUtf32(0x276F)    
```

