# Import-Module posh-git
# Import-Module oh-my-posh

# makes very nice ctrl+r search menu
# Import-Module psfzf

Remove-PSReadlineKeyHandler 'Ctrl+r'
Remove-PSReadlineKeyHandler 'Ctrl+t'

# Set Posh theme
# Set-Theme Paradox

# Gives command suggestions based on history
Set-PSReadLineOption -PredictionSource History
# Gives a listview when typing commands
set-psReadLineOption -PredictionViewStyle ListView
# Set the color of InlinePrediction
Set-PSReadLineOption -Colors @{ InlinePrediction = '#F50606'}