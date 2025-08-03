# Midnight Moss Oh-My-Zsh Theme
# Dark organic theme with moss-inspired accents
# 
# Installation:
# 1. Copy this file to ~/.oh-my-zsh/themes/midnight-moss.zsh-theme
# 2. Change ZSH_THEME="midnight-moss" in ~/.zshrc
# 3. Reload shell: source ~/.zshrc

# Color definitions using Midnight Moss palette
typeset -gA MM_COLORS
MM_COLORS[bg_primary]="#1c1c1c"     # Deep Night
MM_COLORS[bg_secondary]="#262626"   # Shadow
MM_COLORS[bg_tertiary]="#2e2e2e"    # Charcoal
MM_COLORS[bg_highlight]="#3a3a3a"   # Slate
MM_COLORS[bg_border]="#464646"      # Stone
MM_COLORS[bg_subtle]="#525252"      # Ash

MM_COLORS[fg_primary]="#b8b8b8"     # Moonlight
MM_COLORS[fg_bright]="#c8c8c8"      # Silver
MM_COLORS[fg_muted]="#7a7a7a"       # Mist

MM_COLORS[moss]="#5e8d87"           # Primary accent
MM_COLORS[forest]="#6e8f7c"        # Success/growth
MM_COLORS[ocean]="#5d7e97"         # Info/functions
MM_COLORS[wine]="#9b6a6c"          # Error/warning
MM_COLORS[sage]="#826d94"          # Keywords/special
MM_COLORS[amber]="#a09262"         # Strings/constants
MM_COLORS[copper]="#9d7a5a"        # Tags/metadata

# Convert hex to terminal color codes
autoload -U colors && colors

# Helper function to get RGB color codes
mm_rgb() {
    local hex=$1
    # Remove # if present
    hex=${hex#\#}
    
    # Convert to RGB
    local r=$((16#${hex:0:2}))
    local g=$((16#${hex:2:2}))
    local b=$((16#${hex:4:2}))
    
    echo "$r;$g;$b"
}

# Define color variables with RGB codes
MM_MOSS="%{[38;2;$(mm_rgb $MM_COLORS[moss])m%}"
MM_FOREST="%{[38;2;$(mm_rgb $MM_COLORS[forest])m%}"
MM_OCEAN="%{[38;2;$(mm_rgb $MM_COLORS[ocean])m%}"
MM_WINE="%{[38;2;$(mm_rgb $MM_COLORS[wine])m%}"
MM_SAGE="%{[38;2;$(mm_rgb $MM_COLORS[sage])m%}"
MM_AMBER="%{[38;2;$(mm_rgb $MM_COLORS[amber])m%}"
MM_COPPER="%{[38;2;$(mm_rgb $MM_COLORS[copper])m%}"
MM_FG_PRIMARY="%{[38;2;$(mm_rgb $MM_COLORS[fg_primary])m%}"
MM_FG_BRIGHT="%{[38;2;$(mm_rgb $MM_COLORS[fg_bright])m%}"
MM_FG_MUTED="%{[38;2;$(mm_rgb $MM_COLORS[fg_muted])m%}"
MM_RESET="%{[0m%}"

# Fallback to 256 colors if true color not supported
if [[ $COLORTERM != "truecolor" && $COLORTERM != "24bit" ]]; then
    MM_MOSS="%F{73}"      # Closest to #5e8d87
    MM_FOREST="%F{108}"   # Closest to #6e8f7c  
    MM_OCEAN="%F{67}"     # Closest to #5d7e97
    MM_WINE="%F{131}"     # Closest to #9b6a6c
    MM_SAGE="%F{103}"     # Closest to #826d94
    MM_AMBER="%F{143}"    # Closest to #a09262
    MM_COPPER="%F{137}"   # Closest to #9d7a5a
    MM_FG_PRIMARY="%F{249}" # Closest to #b8b8b8
    MM_FG_BRIGHT="%F{251}"  # Closest to #c8c8c8
    MM_FG_MUTED="%F{244}"   # Closest to #7a7a7a
    MM_RESET="%f"
fi

# Git status indicators
ZSH_THEME_GIT_PROMPT_PREFIX="${MM_MOSS}git:(${MM_RESET}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${MM_RESET}"
ZSH_THEME_GIT_PROMPT_DIRTY="${MM_MOSS})${MM_WINE} ✗${MM_RESET}"
ZSH_THEME_GIT_PROMPT_CLEAN="${MM_MOSS})${MM_FOREST} ✓${MM_RESET}"

# Git status symbols
ZSH_THEME_GIT_PROMPT_ADDED="${MM_FOREST}✚${MM_RESET}"
ZSH_THEME_GIT_PROMPT_MODIFIED="${MM_AMBER}✹${MM_RESET}"
ZSH_THEME_GIT_PROMPT_DELETED="${MM_WINE}✖${MM_RESET}"
ZSH_THEME_GIT_PROMPT_RENAMED="${MM_OCEAN}➜${MM_RESET}"
ZSH_THEME_GIT_PROMPT_UNMERGED="${MM_SAGE}═${MM_RESET}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="${MM_COPPER}✭${MM_RESET}"

# Function to get current Git status with detailed info
function mm_git_prompt_info() {
    if [[ -n $(git rev-parse --git-dir 2>/dev/null) ]]; then
        local branch=$(git_current_branch)
        local status=""
        
        # Check for various git states
        if [[ -n $(git status --porcelain 2>/dev/null) ]]; then
            # Get counts of different types of changes
            local added=$(git status --porcelain 2>/dev/null | grep '^A' | wc -l | tr -d ' ')
            local modified=$(git status --porcelain 2>/dev/null | grep '^.M' | wc -l | tr -d ' ')
            local deleted=$(git status --porcelain 2>/dev/null | grep '^.D' | wc -l | tr -d ' ')
            local untracked=$(git status --porcelain 2>/dev/null | grep '^??' | wc -l | tr -d ' ')
            
            [[ $added -gt 0 ]] && status+="${MM_FOREST}+$added${MM_RESET}"
            [[ $modified -gt 0 ]] && status+="${MM_AMBER}~$modified${MM_RESET}"
            [[ $deleted -gt 0 ]] && status+="${MM_WINE}-$deleted${MM_RESET}"
            [[ $untracked -gt 0 ]] && status+="${MM_COPPER}?$untracked${MM_RESET}"
            
            echo "${MM_MOSS}git:(${MM_OCEAN}$branch${MM_MOSS})${MM_RESET} $status"
        else
            echo "${MM_MOSS}git:(${MM_OCEAN}$branch${MM_MOSS})${MM_FOREST} ✓${MM_RESET}"
        fi
    fi
}

# Function to show current time with subtle styling
function mm_time_info() {
    echo "${MM_FG_MUTED}$(date '+%H:%M:%S')${MM_RESET}"
}

# Function to show user and hostname with color coding
function mm_user_host() {
    local user_color=""
    local host_color=""
    
    # Color code based on user privileges
    if [[ $UID -eq 0 ]]; then
        user_color=$MM_WINE  # Root user in wine red
    else
        user_color=$MM_FG_BRIGHT  # Regular user in bright text
    fi
    
    # Color code based on connection type
    if [[ -n $SSH_CONNECTION ]]; then
        host_color=$MM_AMBER  # SSH connection in amber
    else
        host_color=$MM_FG_PRIMARY  # Local in primary text
    fi
    
    echo "${user_color}%n${MM_FG_MUTED}@${host_color}%m${MM_RESET}"
}

# Function to show current directory with smart truncation
function mm_directory() {
    local pwd_info=""
    local current_dir=${PWD/#$HOME/\~}
    
    # Color based on permissions
    if [[ -w $PWD ]]; then
        pwd_info="${MM_OCEAN}$current_dir${MM_RESET}"
    else
        pwd_info="${MM_WINE}$current_dir${MM_RESET}"
    fi
    
    echo "$pwd_info"
}

# Function to show exit code if non-zero
function mm_return_status() {
    local return_code=$?
    if [[ $return_code -ne 0 ]]; then
        echo "${MM_WINE}[$return_code]${MM_RESET} "
    fi
}

# Function to show Python virtual environment
function mm_virtualenv() {
    if [[ -n $VIRTUAL_ENV ]]; then
        local venv_name=$(basename $VIRTUAL_ENV)
        echo "${MM_SAGE}(${venv_name})${MM_RESET} "
    fi
}

# Function to show Node.js version if in a Node project
function mm_node_version() {
    if [[ -f package.json ]] && command -v node >/dev/null 2>&1; then
        local node_version=$(node --version)
        echo "${MM_FOREST}⬢ ${node_version}${MM_RESET} "
    fi
}

# Function to show current kubectl context
function mm_kube_context() {
    if command -v kubectl >/dev/null 2>&1; then
        local context=$(kubectl config current-context 2>/dev/null)
        if [[ -n $context ]]; then
            echo "${MM_COPPER}☸ $context${MM_RESET} "
        fi
    fi
}

# Battery status (macOS)
function mm_battery() {
    if [[ "$OSTYPE" == "darwin"* ]] && command -v pmset >/dev/null 2>&1; then
        local battery_info=$(pmset -g batt | grep -o '[0-9]*%' | head -1)
        local battery_percent=${battery_info%\%}
        
        if [[ -n $battery_percent ]]; then
            local battery_color=""
            if [[ $battery_percent -le 20 ]]; then
                battery_color=$MM_WINE
            elif [[ $battery_percent -le 50 ]]; then
                battery_color=$MM_AMBER
            else
                battery_color=$MM_FOREST
            fi
            echo "${battery_color}🔋 $battery_info${MM_RESET} "
        fi
    fi
}

# Main prompt components
PROMPT='
╭─ $(mm_user_host) ${MM_FG_MUTED}in${MM_RESET} $(mm_directory)
$(mm_virtualenv)$(mm_node_version)$(mm_kube_context)$(mm_battery)$(mm_git_prompt_info)
╰─${MM_MOSS}▸${MM_RESET} '

# Right prompt with time and additional info
RPROMPT='$(mm_time_info)'

# Alternative compact prompt (uncomment to use)
# PROMPT='$(mm_return_status)$(mm_virtualenv)$(mm_user_host) ${MM_FG_MUTED}in${MM_RESET} $(mm_directory) $(mm_git_prompt_info)
# ${MM_MOSS}▸${MM_RESET} '

# Alternative minimal prompt (uncomment to use)
# PROMPT='$(mm_directory) $(mm_git_prompt_info)
# ${MM_MOSS}▸${MM_RESET} '

# Continuation prompt
PROMPT2="${MM_FG_MUTED}%_${MM_RESET} ${MM_MOSS}▸${MM_RESET} "

# Selection prompt
PROMPT3="${MM_FG_MUTED}?#${MM_RESET} ${MM_MOSS}▸${MM_RESET} "

# Execution trace prompt
PROMPT4="${MM_FG_MUTED}+%N:%i${MM_RESET} ${MM_MOSS}▸${MM_RESET} "

# Auto-correction prompt
SPROMPT="${MM_WINE}zsh: correct ${MM_FG_BRIGHT}'%R'${MM_WINE} to ${MM_FOREST}'%r'${MM_WINE} [nyae]?${MM_RESET} "

# History search highlighting
if [[ -n ${ZSH_HIGHLIGHT_STYLES+x} ]]; then
    # zsh-syntax-highlighting compatibility
    ZSH_HIGHLIGHT_STYLES[default]='fg='$(mm_rgb $MM_COLORS[fg_primary])
    ZSH_HIGHLIGHT_STYLES[unknown-token]='fg='$(mm_rgb $MM_COLORS[wine])
    ZSH_HIGHLIGHT_STYLES[reserved-word]='fg='$(mm_rgb $MM_COLORS[sage]),bold'
    ZSH_HIGHLIGHT_STYLES[alias]='fg='$(mm_rgb $MM_COLORS[ocean])
    ZSH_HIGHLIGHT_STYLES[builtin]='fg='$(mm_rgb $MM_COLORS[ocean])
    ZSH_HIGHLIGHT_STYLES[function]='fg='$(mm_rgb $MM_COLORS[ocean])
    ZSH_HIGHLIGHT_STYLES[command]='fg='$(mm_rgb $MM_COLORS[forest])
    ZSH_HIGHLIGHT_STYLES[precommand]='fg='$(mm_rgb $MM_COLORS[forest]),underline'
    ZSH_HIGHLIGHT_STYLES[commandseparator]='fg='$(mm_rgb $MM_COLORS[moss])
    ZSH_HIGHLIGHT_STYLES[hashed-command]='fg='$(mm_rgb $MM_COLORS[forest])
    ZSH_HIGHLIGHT_STYLES[path]='underline'
    ZSH_HIGHLIGHT_STYLES[path_prefix]='underline'
    ZSH_HIGHLIGHT_STYLES[path_approx]='fg='$(mm_rgb $MM_COLORS[amber]),underline'
    ZSH_HIGHLIGHT_STYLES[globbing]='fg='$(mm_rgb $MM_COLORS[copper])
    ZSH_HIGHLIGHT_STYLES[history-expansion]='fg='$(mm_rgb $MM_COLORS[sage])
    ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg='$(mm_rgb $MM_COLORS[amber])
    ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg='$(mm_rgb $MM_COLORS[amber])
    ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg='$(mm_rgb $MM_COLORS[sage])
    ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg='$(mm_rgb $MM_COLORS[amber])
    ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg='$(mm_rgb $MM_COLORS[amber])
    ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg='$(mm_rgb $MM_COLORS[moss])
    ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg='$(mm_rgb $MM_COLORS[moss])
    ZSH_HIGHLIGHT_STYLES[assign]='fg='$(mm_rgb $MM_COLORS[copper])
fi

# Load custom functions if they exist
if [[ -f ~/.config/zsh/midnight-moss-functions.zsh ]]; then
    source ~/.config/zsh/midnight-moss-functions.zsh
fi