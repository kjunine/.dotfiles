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
# tmux 설정 + PPM (psmux용 플러그인 매니저, bash 기반 tpm은 Windows에서 동작 안 함)
# psmux 안에서 Prefix + I 로 플러그인 설치
Copy-Item "$PSScriptRoot\.tmux.conf" $HOME
if (-not (Test-Path "$HOME\.psmux\plugins\ppm")) {
  git clone https://github.com/psmux/psmux-plugins.git "$env:TEMP\psmux-plugins"
  New-Item -ItemType Directory -Force "$HOME\.psmux\plugins" | Out-Null
  Copy-Item "$env:TEMP\psmux-plugins\ppm" "$HOME\.psmux\plugins\ppm" -Recurse
  Remove-Item "$env:TEMP\psmux-plugins" -Recurse -Force
}

# https://herdr.dev/ (tmux 스타일 키바인딩, prefix Ctrl+a)
# Windows 설정 경로는 %APPDATA%\herdr, 기본 쉘은 pwsh.exe로 고정
New-Item -ItemType Directory -Force "$env:APPDATA\herdr" | Out-Null
Copy-Item "$PSScriptRoot\..\common\herdr\config.toml" "$env:APPDATA\herdr\config.toml"
Add-Content "$env:APPDATA\herdr\config.toml" "`n[terminal]`ndefault_shell = `"pwsh.exe`""

# https://github.com/sxyazi/yazi
# Windows 설정 경로는 %APPDATA%\yazi\config
winget install sxyazi.yazi
New-Item -ItemType Directory -Force "$env:APPDATA\yazi\config" | Out-Null
Copy-Item "$PSScriptRoot\..\common\yazi\*.toml" "$env:APPDATA\yazi\config\"
# yazi는 mime 판별에 `file` 명령을 쓰는데 Windows엔 없으므로 Git 동봉 file.exe를 지정
[Environment]::SetEnvironmentVariable("YAZI_FILE_ONE", "$env:ProgramFiles\Git\usr\bin\file.exe", "User")

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
