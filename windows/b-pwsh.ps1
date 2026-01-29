# pwsh

# https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell
winget install --id Microsoft.PowerShell

# https://learn.microsoft.com/en-us/powershell/scripting/gallery/installing-psget
# https://learn.microsoft.com/en-us/powershell/module/powershellget/
# - Get-Module -ListAvailable
# - Find-Module -Name PowerShellGet

# https://github.com/PowerShell/PSReadLine
# https://learn.microsoft.com/en-us/powershell/module/psreadline/
# - Find-Module -Name PSReadLine
# - Install-Module -Name PSReadLine -Force
# - notepad $PROFILE
# ```powershell
# Import-Module PSReadLine
# Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
# Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
# Set-PSReadLineKeyHandler -Key Tab -Function Complete
# ```

# https://ohmyposh.dev/docs/installation/windows
winget install JanDeDobbeleer.OhMyPosh
# https://ohmyposh.dev/docs/installation/fonts
oh-my-posh font install
# Meslo -> `MesloLGM NF` in Terminal

oh-my-posh init pwsh | Invoke-Expression
Get-PoshThemes
# 1_shell
notepad $PROFILE
# ```powershell
# # change theme file name if you want
# oh-my-posh init pwsh --config "${HOME}\\AppData\\Local\\Programs\\oh-my-posh\\themes\\1_shell.omp.json" | Invoke-Expression
# ```
