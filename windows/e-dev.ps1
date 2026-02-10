# https://github.com/pyenv-win/pyenv-win/blob/master/docs/installation.md
Invoke-WebRequest -UseBasicParsing -Uri "https://raw.githubusercontent.com/pyenv-win/pyenv-win/master/pyenv-win/install-pyenv-win.ps1" -OutFile "./install-pyenv-win.ps1"; &"./install-pyenv-win.ps1"

# https://github.com/coreybutler/nvm-windows

# Docker
# https://docs.docker.com/desktop/wsl/
# https://docs.docker.com/desktop/setup/install/windows-install/
winget install Docker.DockerDesktop

# Claude Code
irm https://claude.ai/install.ps1 | iex
winget install Anthropic.ClaudeCode
# Gemini CLI
npm install -g @google/gemini-cli
# Codex
npm i -g @openai/codex

# Visual Studio Code
winget install Microsoft.VisualStudioCode
# Cursor
winget install Anysphere.Cursor
# Antigravity
winget install Google.Antigravity

# Warp
winget install Warp.Warp
