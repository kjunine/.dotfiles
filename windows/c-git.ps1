# https://gitforwindows.org/
# https://winget.run/pkg/Git/Git
winget install --id Git.Git

# https://github.com/gluons/powershell-git-aliases
Install-Module git-aliases -Scope CurrentUser -AllowClobber
# https://github.com/dahlbyk/posh-git
Install-Module posh-git -Scope CurrentUser -Force
notepad $PROFILE
# ```powershell
# Set-Alias g git
# # let's add more aliases
# Import-Module git-aliases -DisableNameChecking
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
