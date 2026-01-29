# etc

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
# https://github.com/sharkdp/bat?tab=readme-ov-file#on-windows
winget install sharkdp.bat
# https://github.com/lsd-rs/lsd
winget install --id lsd-rs.lsd
# https://github.com/mikefarah/yq#windows
winget install yq
# https://jqlang.github.io/jq/download/
winget install jqlang.jq

# https://1password.com/downloads/command-line
# https://developer.1password.com/docs/cli/get-started
# Step 1: Install 1Password CLI
winget install 1password-cli
# Step 2: Turn on the 1Password desktop app integration
# Step 3: Enter any command to sign in
op vault list
