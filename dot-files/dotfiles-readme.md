# Dotfiles PowerShell Profile example
- Move your PowerShell Profile file to your dotfiles repo/folder
  - You can find your profile by opening a terminal and type `$PROFILE`
    - Output looks like `C:\Users\<your_username>\Documents\PowerShell\Microsoft.PowerShell_profile.ps1`
- After moving `Microsoft.PowerShell_profile.ps1` PowerShell are now not able to see it. So let's fix that
  - We need to create a symlink to fix it
    - ```PowerShell
        New-Item -Path C:\Users\<your_username>\Documents\PowerShell\Microsoft.PowerShell_profile.ps1 `
                 -ItemType SymbolicLink `
                 -Value (Get-Item ".\Microsoft.PowerShell_profile.ps1").FullName
      ```
- Now anytime you change any of the files, it will be replicated in the other