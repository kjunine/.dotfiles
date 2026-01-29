# Claude Code Status Line for PowerShell with Colors and Progress Bar
$ErrorActionPreference = 'SilentlyContinue'

# Set UTF-8 encoding for proper Unicode character display
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

$input_json = $input | Out-String | ConvertFrom-Json

# ANSI Color codes
$Cyan = "`e[36m"
$Green = "`e[32m"
$Yellow = "`e[33m"
$Red = "`e[31m"
$Magenta = "`e[35m"
$Blue = "`e[34m"
$Gray = "`e[90m"
$Reset = "`e[0m"

# Function to format numbers in compact k format
function Format-CompactNumber {
    param(
        [int]$number,
        [bool]$showDecimal = $false
    )

    if ($number -ge 1000) {
        $k_value = $number / 1000.0
        if ($showDecimal) {
            return "{0:0.0}k" -f $k_value
        } else {
            # Check if it's a round number in k
            if ($k_value -eq [math]::Floor($k_value)) {
                return "{0:0}k" -f $k_value
            } else {
                return "{0:0.0}k" -f $k_value
            }
        }
    } else {
        return "$number"
    }
}

# 1. Model name (Cyan)
$model_name = $input_json.model.display_name

# 2. Progress bar and 3. Percentage (contextual color)
$progress_bar = ""
$percentage_text = ""
$bar_color = $Gray

if ($null -ne $input_json.context_window.current_usage) {
    $current_tokens = $input_json.context_window.current_usage.input_tokens +
                     $input_json.context_window.current_usage.cache_creation_input_tokens +
                     $input_json.context_window.current_usage.cache_read_input_tokens
    $window_size = $input_json.context_window.context_window_size

    if ($window_size -gt 0) {
        $pct = [math]::Floor(($current_tokens * 100) / $window_size)

        # Determine color based on percentage
        if ($pct -gt 75) {
            $bar_color = $Red
        } elseif ($pct -ge 50) {
            $bar_color = $Yellow
        } else {
            $bar_color = $Green
        }

        # Create progress bar (20 characters wide)
        $bar_width = 20
        $filled = [math]::Floor(($pct * $bar_width) / 100)
        $empty = $bar_width - $filled
        $bar_filled = "█" * $filled
        $bar_empty = "░" * $empty

        $progress_bar = "$bar_color[$bar_filled$bar_empty]$Reset"
        $percentage_text = "$bar_color$pct%$Reset"

        # 4. Tokens (Magenta) - compact k format
        $current_formatted = Format-CompactNumber -number $current_tokens -showDecimal $true
        $max_formatted = Format-CompactNumber -number $window_size -showDecimal $false
        $token_display = "$Magenta$current_formatted/$max_formatted$Reset"
    } else {
        $token_display = "${Magenta}0/0$Reset"
    }
} else {
    $progress_bar = "${Gray}[░░░░░░░░░░░░░░░░░░░░]$Reset"
    $percentage_text = "${Gray}0%$Reset"
    $token_display = "${Magenta}0/0$Reset"
}

# 5. Git branch (Green)
$git_display = ""
try {
    $cwd = $input_json.workspace.current_dir
    Push-Location $cwd
    $branch = git rev-parse --abbrev-ref HEAD 2>$null
    if ($LASTEXITCODE -eq 0 -and ![string]::IsNullOrEmpty($branch)) {
        $git_display = "$Green$branch$Reset"
    }
    Pop-Location
} catch {
    # Not a git repo
}

# 6. Project name (Blue)
$project_dir = $input_json.workspace.project_dir
$project_name = Split-Path -Leaf $project_dir
$project_display = "$Blue$project_name$Reset"

# Build the status line
$separator = "$Gray|$Reset"
$parts = @(
    "$Cyan$model_name$Reset",
    $progress_bar,
    $percentage_text,
    $token_display
)

if (![string]::IsNullOrEmpty($git_display)) {
    $parts += $git_display
}

$parts += $project_display

Write-Host ($parts -join " $separator ")
