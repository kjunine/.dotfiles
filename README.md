# .dotfiles

개인 개발 환경 설정을 위한 dotfiles 저장소입니다. macOS, Ubuntu (WSL 포함), Windows 세 플랫폼의 초기 셋업 스크립트를 관리합니다.

## 디렉토리 구조

- `macosx/` - macOS 전용 셋업 스크립트
- `ubuntu/` - Ubuntu/WSL 전용 셋업 스크립트
- `windows/` - Windows 전용 셋업 스크립트
- `common/` - 플랫폼 공통 설정 파일 (.gitconfig, .tmux.conf, yazi, helpers.sh)

## 스크립트 실행 순서

알파벳 접두사(a→e)로 실행 순서가 정해져 있습니다:

| 단계 | 파일명 | 역할 |
|------|--------|------|
| a | `a-system.sh/.ps1` | SSH 키, 패키지 매니저(Homebrew/winget), 기본 앱 설치 |
| b | `b-zsh.sh/.ps1` | 셸 설정 (Oh My Zsh, Starship prompt) |
| c | `c-git.sh/.ps1` | Git 도구 (gh, delta, tig, lazygit, forgit) + `.gitconfig` 복사 |
| d | `d-etc.sh` | CLI 도구 (neovim/AstroNvim, tmux, yazi, fzf, zoxide, bat, lsd, ripgrep 등) |
| e | `e-dev.sh/.ps1` | 개발 런타임 (pyenv/Python, nvm/Node.js, Docker, Claude Code, Gemini CLI, Codex) |

## 사용법

### macOS

```bash
cd macosx
./a-system.sh
./b-zsh.sh
./c-git.sh
./d-etc.sh
./e-dev.sh
# ./f-mas.sh  # Mac App Store 앱 설치 (선택 사항)
```

### Ubuntu/WSL

```bash
cd ubuntu
./a-system.sh
./b-zsh.sh
./c-git.sh
./d-etc.sh
./e-dev.sh
```

### Windows

PowerShell에서 실행:

```powershell
.\a-system.ps1
.\b-zsh.ps1
.\c-git.ps1
.\e-dev.ps1
```

## 공통 설정 파일

`common/` 디렉토리에는 플랫폼에 관계없이 공통으로 사용하는 설정 파일들이 위치합니다:

- `.gitconfig` - Git 기본 설정
- `.gitignore_global` - 전역 Git ignore 패턴
- `.tmux.conf` - tmux 설정 (Catppuccin Mocha 테마, TPM 플러그인)
- `yazi/` - yazi 파일 매니저 설정
- `helpers.sh` - 스크립트 공통 헬퍼 함수 (멱등성 보장)
