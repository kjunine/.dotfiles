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

Copy-Item .gitconfig .gitignore_global $HOME
git config --global core.excludesfile $HOME\.gitignore_global

# https://dandavison.github.io/delta/installation.html
winget install jftuga.less
winget install dandavison.delta

# https://github.com/cli/cli#installation
winget install --id GitHub.cli

# https://github.com/jesseduffield/lazygit
winget install lazygit

# https://www.gitkraken.com/
winget install Axosoft.GitKraken

# https://github.com/neovim/neovim/wiki/Installing-Neovim
winget install Neovim.Neovim

# - notepad $PROFILE
# ```powershell
# Set-Alias vi nvim
# Set-Alias vim nvim
# ```

# https://spacevim.org/quick-start-guide/

# https://github.com/ajeetdsouza/zoxide
winget install zoxide
# - notepad $PROFILE
# ```powershell
# Invoke-Expression (& { (zoxide init powershell | Out-String) })
# ```
# https://github.com/junegunn/fzf
winget install fzf
# https://github.com/mikefarah/yq#windows
winget install yq
# https://jqlang.github.io/jq/download/
winget install jqlang.jq

# https://github.com/pyenv-win/pyenv-win/blob/master/docs/installation.md
Invoke-WebRequest -UseBasicParsing -Uri "https://raw.githubusercontent.com/pyenv-win/pyenv-win/master/pyenv-win/install-pyenv-win.ps1" -OutFile "./install-pyenv-win.ps1"; &"./install-pyenv-win.ps1"

# https://github.com/coreybutler/nvm-windows

# https://docs.docker.com/desktop/wsl/

# https://github.com/ahmetb/kubectx
winget install --id ahmetb.kubectx
winget install --id ahmetb.kubens

# https://kubectl.docs.kubernetes.io/installation/kustomize/
# choco install kustomize

# https://helm.sh/
winget install Helm.Helm
