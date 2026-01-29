# dev

# https://github.com/pyenv-win/pyenv-win/blob/master/docs/installation.md
Invoke-WebRequest -UseBasicParsing -Uri "https://raw.githubusercontent.com/pyenv-win/pyenv-win/master/pyenv-win/install-pyenv-win.ps1" -OutFile "./install-pyenv-win.ps1"; &"./install-pyenv-win.ps1"

# https://github.com/coreybutler/nvm-windows

# https://docs.docker.com/desktop/wsl/
# https://docs.docker.com/desktop/setup/install/windows-install/
winget install Docker.DockerDesktop

# Visual Studio Code
winget install Microsoft.VisualStudioCode

# Cursor
winget install Anysphere.Cursor
