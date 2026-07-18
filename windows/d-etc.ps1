# https://github.com/neovim/neovim/wiki/Installing-Neovim
winget install Neovim.Neovim

# - notepad $PROFILE
# ```powershell
# Set-Alias vi nvim
# Set-Alias vim nvim
# ```

# https://spacevim.org/quick-start-guide/

# https://github.com/marlocarlo/psmux (Windows용 tmux)
winget install --id marlocarlo.psmux
# tmux 설정 + TPM (플러그인 매니저)
Copy-Item .tmux.conf $HOME
if (-not (Test-Path "$HOME\.tmux\plugins\tpm")) {
  git clone https://github.com/tmux-plugins/tpm "$HOME\.tmux\plugins\tpm"
}

# https://github.com/ajeetdsouza/zoxide
winget install zoxide
# - notepad $PROFILE
# ```powershell
# Invoke-Expression (& { (zoxide init powershell | Out-String) })
# ```
# https://github.com/junegunn/fzf
winget install fzf
# https://github.com/sharkdp/bat?tab=readme-ov-file#on-windows
winget install sharkdp.bat
# https://github.com/lsd-rs/lsd
winget install --id lsd-rs.lsd
# https://github.com/mikefarah/yq#windows
winget install yq
# https://jqlang.github.io/jq/download/
winget install jqlang.jq

# need more details
