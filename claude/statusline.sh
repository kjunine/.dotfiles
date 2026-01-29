#!/usr/bin/env bash
# Claude Code Status Line for Bash with Colors and Progress Bar

# Check jq availability
if ! command -v jq &>/dev/null; then
  exit 0
fi

# Read JSON from stdin
input_json=$(cat)

# ANSI Color codes
Cyan='\033[36m'
Green='\033[32m'
Yellow='\033[33m'
Red='\033[31m'
Magenta='\033[35m'
Blue='\033[34m'
Gray='\033[90m'
Reset='\033[0m'

# Function to format numbers in compact k format
format_compact_number() {
  local number=$1
  local show_decimal=$2

  if [ "$number" -ge 1000 ]; then
    if [ "$show_decimal" = "true" ]; then
      awk "BEGIN { printf \"%.1fk\", $number / 1000.0 }"
    else
      local k_value
      k_value=$(awk "BEGIN { printf \"%.1f\", $number / 1000.0 }")
      local k_int
      k_int=$(awk "BEGIN { printf \"%d\", $number / 1000.0 }")
      if awk "BEGIN { exit ($k_value == $k_int) ? 0 : 1 }"; then
        printf '%dk' "$k_int"
      else
        printf '%sk' "$k_value"
      fi
    fi
  else
    printf '%s' "$number"
  fi
}

# 1. Model name (Cyan)
model_name=$(printf '%s' "$input_json" | jq -r '.model.display_name // empty')

# 2. Progress bar and 3. Percentage (contextual color)
progress_bar=""
percentage_text=""
token_display=""

current_usage=$(printf '%s' "$input_json" | jq -r '.context_window.current_usage // empty')

if [ -n "$current_usage" ]; then
  input_tokens=$(printf '%s' "$input_json" | jq -r '.context_window.current_usage.input_tokens // 0')
  cache_creation=$(printf '%s' "$input_json" | jq -r '.context_window.current_usage.cache_creation_input_tokens // 0')
  cache_read=$(printf '%s' "$input_json" | jq -r '.context_window.current_usage.cache_read_input_tokens // 0')
  current_tokens=$((input_tokens + cache_creation + cache_read))
  window_size=$(printf '%s' "$input_json" | jq -r '.context_window.context_window_size // 0')

  if [ "$window_size" -gt 0 ]; then
    pct=$((current_tokens * 100 / window_size))

    # Determine color based on percentage
    if [ "$pct" -gt 75 ]; then
      bar_color=$Red
    elif [ "$pct" -ge 50 ]; then
      bar_color=$Yellow
    else
      bar_color=$Green
    fi

    # Create progress bar (20 characters wide)
    bar_width=20
    filled=$((pct * bar_width / 100))
    empty=$((bar_width - filled))
    bar_filled=$(printf '%0.s█' $(seq 1 "$filled") 2>/dev/null)
    bar_empty=$(printf '%0.s░' $(seq 1 "$empty") 2>/dev/null)

    # Handle edge case where filled or empty is 0
    [ "$filled" -eq 0 ] && bar_filled=""
    [ "$empty" -eq 0 ] && bar_empty=""

    progress_bar="${bar_color}[${bar_filled}${bar_empty}]${Reset}"
    percentage_text="${bar_color}${pct}%${Reset}"

    # 4. Tokens (Magenta) - compact k format
    current_formatted=$(format_compact_number "$current_tokens" "true")
    max_formatted=$(format_compact_number "$window_size" "false")
    token_display="${Magenta}${current_formatted}/${max_formatted}${Reset}"
  else
    token_display="${Magenta}0/0${Reset}"
  fi
else
  progress_bar="${Gray}[░░░░░░░░░░░░░░░░░░░░]${Reset}"
  percentage_text="${Gray}0%${Reset}"
  token_display="${Magenta}0/0${Reset}"
fi

# 5. Git branch (Green)
git_display=""
cwd=$(printf '%s' "$input_json" | jq -r '.workspace.current_dir // empty')
if [ -n "$cwd" ]; then
  branch=$(git -C "$cwd" rev-parse --abbrev-ref HEAD 2>/dev/null)
  if [ -n "$branch" ]; then
    git_display="${Green}${branch}${Reset}"
  fi
fi

# 6. Project name (Blue)
project_dir=$(printf '%s' "$input_json" | jq -r '.workspace.project_dir // empty')
project_name=$(basename "$project_dir")
project_display="${Blue}${project_name}${Reset}"

# Build the status line
separator="${Gray}|${Reset}"

output="${Cyan}${model_name}${Reset}"
output="${output} ${separator} ${progress_bar}"
output="${output} ${separator} ${percentage_text}"
output="${output} ${separator} ${token_display}"

if [ -n "$git_display" ]; then
  output="${output} ${separator} ${git_display}"
fi

output="${output} ${separator} ${project_display}"

printf '%b\n' "$output"
