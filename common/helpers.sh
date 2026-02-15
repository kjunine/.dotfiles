#!/bin/sh
# helpers.sh - 공통 헬퍼 함수 (POSIX sh 호환)

# 도구 설치 여부 확인 (PATH 기준)
is_installed() {
  command -v "$1" >/dev/null 2>&1
}

# brew로 설치 안 된 경우만 brew install 실행
brew_install() {
  brew list "$1" >/dev/null 2>&1 || brew install "$1"
}

# 단일 줄을 파일에 중복 없이 추가
append_if_missing() {
  grep -qF "$1" "$2" 2>/dev/null || echo "$1" >> "$2"
}

# 마커 기반 블록을 파일에 중복 없이 추가
# 사용법: append_block_if_missing "marker_name" "block_content" "target_file"
append_block_if_missing() {
  _marker="$1"
  _content="$2"
  _file="$3"
  if ! grep -qF "# BEGIN ${_marker}" "$_file" 2>/dev/null; then
    printf '\n# BEGIN %s\n%s\n# END %s\n' "$_marker" "$_content" "$_marker" >> "$_file"
  fi
}
