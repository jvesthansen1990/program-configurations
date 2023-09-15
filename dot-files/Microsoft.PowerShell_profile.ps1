# Set Posh-Theme
oh-my-posh init pwsh --config 'C:\Users\jvest\AppData\Local\Programs\oh-my-posh\themes\unicorn.omp.json' | Invoke-Expression

Import-Module posh-git

Remove-PSReadlineKeyHandler 'Ctrl+r'
Remove-PSReadlineKeyHandler 'Ctrl+t'

# makes very nice ctrl+r search menu
Import-Module psfzf

# Gives command suggestions based on history
Set-PSReadLineOption -PredictionSource History
# Gives a listview when typing commands
set-psReadLineOption -PredictionViewStyle ListView
# Set the color of InlinePrediction
Set-PSReadLineOption -Colors @{ InlinePrediction = '#F50606'}