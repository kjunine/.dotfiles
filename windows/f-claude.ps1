# claude

# Claude Code
irm https://claude.ai/install.ps1 | iex
New-Item -ItemType Directory -Force -Path "$HOME\.claude" | Out-Null
Copy-Item ..\claude\settings.windows.json "$HOME\.claude\settings.json"
Copy-Item ..\claude\statusline.ps1 "$HOME\.claude\statusline.ps1"
