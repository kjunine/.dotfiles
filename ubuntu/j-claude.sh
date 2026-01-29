#!/usr/bin/env zsh
set -x

curl -fsSL https://claude.ai/install.sh | bash

mkdir -p ~/.claude
cp ../claude/settings.json ~/.claude/settings.json
cp ../claude/statusline.sh ~/.claude/statusline.sh
chmod +x ~/.claude/statusline.sh
