# When using windows terminal with PSREADLINE and psfzf it will log your command/console history to the followinglocation:
    %userprofile%\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadline\ConsoleHost_history.txt

# Alternatively if it can not be found here type this into the windows terminal: 
    (Get-PSReadLineOption).HistorySavePath and it will show you where it saves the log.
