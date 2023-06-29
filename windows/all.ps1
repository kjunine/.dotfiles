# all

# https://github.com/microsoft/winget-cli
# - Microsoft Store

# https://github.com/microsoft/terminal
winget install --id Microsoft.WindowsTerminal

# https://terminalsplash.com/
# - Dracula
# - Monokai Night

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

# https://gitforwindows.org/
# https://winget.run/pkg/Git/Git
winget install --id Git.Git

# https://github.com/dahlbyk/posh-git
# - Install-Module -Name posh-git
# - notepad $PROFILE
# ```powershell
# Set-Alias g git
# # let's add more aliases
# Import-Module posh-git
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

# https://github.com/cli/cli#installation
winget install --id GitHub.cli

# https://github.com/neovim/neovim/wiki/Installing-Neovim
winget install Neovim.Neovim

# https://spacevim.org/quick-start-guide/

# https://github.com/pyenv-win/pyenv-win/blob/master/docs/installation.md
Invoke-WebRequest -UseBasicParsing -Uri "https://raw.githubusercontent.com/pyenv-win/pyenv-win/master/pyenv-win/install-pyenv-win.ps1" -OutFile "./install-pyenv-win.ps1"; &"./install-pyenv-win.ps1"

# https://github.com/coreybutler/nvm-windows

# https://github.com/mikefarah/yq#windows
winget install yq
# https://jqlang.github.io/jq/download/
winget install jqlang.jq

# https://docs.docker.com/desktop/wsl/
