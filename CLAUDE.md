# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Language

- 항상 한국어로만 응답할 것

## Repository Overview

개인 개발 환경 설정을 위한 dotfiles 저장소. macOS, Ubuntu (WSL 포함), Windows 세 플랫폼의 초기 셋업 스크립트를 관리한다.

## Architecture

플랫폼별 디렉토리(`macosx/`, `ubuntu/`, `windows/`)에 알파벳 접두사로 실행 순서가 정해진 셋업 스크립트들이 있다:

| 단계 | 파일명 | 역할 |
|------|--------|------|
| a | `a-system.sh/.ps1` | SSH 키, 패키지 매니저(Homebrew/winget), 기본 앱 설치 |
| b | `b-zsh.sh/.ps1` | 셸 설정 (Oh My Zsh, Starship prompt) |
| c | `c-git.sh/.ps1` | Git 도구 (gh, delta, tig, lazygit, forgit) + `.gitconfig` 복사 |
| d | `d-etc.sh` | CLI 도구 (neovim/AstroNvim, tmux, yazi, fzf, zoxide, bat, lsd, ripgrep 등) |
| e | `e-dev.sh/.ps1` | 개발 런타임 (pyenv/Python, nvm/Node.js, Docker, Claude Code, Gemini CLI, Codex) |
| f | `f-mas.sh` | macOS 전용 - Mac App Store 앱 (주석 처리된 참고 목록) |

- `ubuntu/c-vim.sh`는 레거시 파일 (SpaceVim 기반, 현재는 `d-etc.sh`에서 AstroNvim으로 대체)
- 각 플랫폼의 `.gitconfig`과 `.gitignore_global`은 `c-git.sh`에서 `~/.gitconfig`과 `~/.gitignore_global`로 복사됨
- macOS와 Ubuntu의 `.gitconfig` 내용은 동일

## Conventions

- 스크립트는 순서대로 수동 실행하도록 설계됨 (자동화 파이프라인 아님)
- `set -x`로 실행 추적 활성화
- 셸 설정은 `>> ~/.zshrc` 방식으로 append
- Homebrew를 macOS와 Ubuntu 공통 패키지 매니저로 사용
- Windows는 `winget`과 PowerShell(`.ps1`) 사용
- 새 도구 추가 시 해당 단계(a~e)의 스크립트에 맞는 위치에 추가할 것
