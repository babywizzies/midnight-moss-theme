# Midnight Moss for Zsh/Oh-My-Zsh

A sophisticated dark theme for Zsh and Oh-My-Zsh featuring organic moss-inspired colors and intelligent prompt components.

## Installation

### Oh-My-Zsh (Recommended)

1. **Download the theme**:
   ```bash
   curl -o ~/.oh-my-zsh/themes/midnight-moss.zsh-theme \
     https://raw.githubusercontent.com/yourusername/midnight-moss-theme/main/zsh/midnight-moss.zsh-theme
   ```

2. **Update your .zshrc**:
   ```bash
   # Change the theme line in ~/.zshrc
   ZSH_THEME="midnight-moss"
   ```

3. **Reload your shell**:
   ```bash
   source ~/.zshrc
   ```

### Manual Installation (Vanilla Zsh)

1. **Download the theme**:
   ```bash
   mkdir -p ~/.config/zsh/themes
   curl -o ~/.config/zsh/themes/midnight-moss.zsh-theme \
     https://raw.githubusercontent.com/yourusername/midnight-moss-theme/main/zsh/midnight-moss.zsh-theme
   ```

2. **Source in your .zshrc**:
   ```bash
   # Add to ~/.zshrc
   source ~/.config/zsh/themes/midnight-moss.zsh-theme
   ```

### Git Installation
```bash
# Clone the repository
git clone https://github.com/yourusername/midnight-moss-theme.git

# Copy theme file
cp midnight-moss-theme/zsh/midnight-moss.zsh-theme ~/.oh-my-zsh/themes/

# Set theme in ~/.zshrc
sed -i 's/ZSH_THEME=".*"/ZSH_THEME="midnight-moss"/' ~/.zshrc

# Reload shell
source ~/.zshrc
```

## Features

### Intelligent Prompt Components

#### **User & Host Display**
- **Root user**: Wine red highlighting for security awareness
- **SSH sessions**: Amber highlighting to indicate remote connections
- **Local sessions**: Standard moonlight coloring

#### **Directory Information**
- **Writable directories**: Ocean blue for normal access
- **Read-only directories**: Wine red for restricted access
- **Home directory**: Abbreviated as `~` for clean appearance
- **Smart truncation**: Long paths handled elegantly

#### **Git Integration**
- **Branch name**: Ocean blue with moss green decoration
- **Clean repository**: Forest green checkmark
- **Detailed change counts**: Color-coded by change type
  - `+n` additions in forest green
  - `~n` modifications in amber
  - `-n` deletions in wine red  
  - `?n` untracked files in copper

#### **Development Environment**
- **Python virtual environments**: Sage purple with parentheses
- **Node.js projects**: Forest green with version (when package.json present)
- **Kubernetes context**: Copper orange with ☸ symbol
- **Return codes**: Wine red brackets for non-zero exits

#### **System Information**
- **Battery status** (macOS): Color-coded percentage with 🔋 icon
  - Green: >50%
  - Amber: 20-50%
  - Wine red: <20%
- **Time display**: Muted gray in right prompt (RPROMPT)

### Visual Design

#### **Two-Line Layout**
```
╭─ user@host in /current/directory
python-env node-v16.14.0 ☸ context 🔋 85% git:(main) +2 ~1
╰─▸ 
```

#### **Clean Separators**
- Unicode box-drawing characters create elegant prompt structure
- Moss green arrow (▸) for command input
- Consistent spacing and alignment

#### **Color Psychology**
- **Moss green**: Primary accent, commands, success states
- **Forest green**: Growth, additions, positive indicators
- **Ocean blue**: Information, directories, branches
- **Wine red**: Warnings, errors, restricted access
- **Sage purple**: Special contexts, environments
- **Amber yellow**: Changes, SSH connections, warnings
- **Copper orange**: Metadata, untracked files, contexts

## Customization

### Alternative Prompt Styles

The theme includes three prompt variants. Uncomment your preferred style:

#### **Compact Style**
```bash
# Single line with essential information
user@host in /directory git:(main) ✓
▸ 
```

#### **Minimal Style**
```bash
# Directory and git only
/current/directory git:(main) ✓
▸ 
```

### Color Customization

Edit the theme file to modify colors:
```bash
# In midnight-moss.zsh-theme, modify the MM_COLORS array
MM_COLORS[moss]="#your_color_here"     # Change primary accent
MM_COLORS[forest]="#your_color_here"   # Change success color
# ... etc
```

### Adding Custom Functions

Create `~/.config/zsh/midnight-moss-functions.zsh` for custom prompt components:
```bash
# Example: Docker context display
function mm_docker_context() {
    if command -v docker >/dev/null 2>&1; then
        local context=$(docker context show 2>/dev/null)
        if [[ -n $context && $context != "default" ]]; then
            echo "${MM_OCEAN}🐳 $context${MM_RESET} "
        fi
    fi
}

# Add to your PROMPT variable
```

## Plugin Integration

### zsh-syntax-highlighting

The theme automatically configures syntax highlighting colors:
```bash
# Install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
  ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Add to plugins in ~/.zshrc
plugins=(... zsh-syntax-highlighting)
```

Colors are automatically applied:
- **Commands**: Forest green
- **Options**: Amber yellow
- **Strings**: Amber yellow with quotes
- **Paths**: Underlined
- **Invalid**: Wine red

### zsh-autosuggestions

Compatible with autosuggestions plugin:
```bash
# Install
git clone https://github.com/zsh-users/zsh-autosuggestions \
  ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# Add to plugins
plugins=(... zsh-autosuggestions)
```

### powerlevel10k Migration

If switching from powerlevel10k, you can remove p10k configuration:
```bash
# Remove p10k instant prompt and config
rm ~/.p10k.zsh

# Comment out p10k lines in ~/.zshrc
# Enable Midnight Moss
ZSH_THEME="midnight-moss"
```

## Requirements

### Terminal Support
- **True color terminal**: Recommended for best appearance
- **256 color fallback**: Automatic fallback for older terminals
- **Unicode support**: Required for prompt symbols

### Zsh Version
- **Zsh 5.0+**: Required for advanced features
- **Oh-My-Zsh**: Optional but recommended

### Font Requirements
Works with any font, but enhanced with:
- **Nerd Fonts**: For additional symbols
- **Powerline fonts**: For best compatibility
- **JetBrains Mono**: Excellent readability
- **Fira Code**: Programming ligatures

## Troubleshooting

### Colors not displaying correctly
1. **Check terminal support**:
   ```bash
   echo $COLORTERM  # Should show "truecolor" or "24bit"
   echo $TERM       # Should show xterm-256color or similar
   ```

2. **Test color support**:
   ```bash
   # True color test
   awk 'BEGIN{
       s="/\\/\\/\\/\\/\\"; s=s s s s s s s s;
       for (colnum = 0; colnum<77; colnum++) {
           r = 255-(colnum*255/76);
           g = (colnum*510/76);
           b = (colnum*255/76);
           if (g>255) g = 510-g;
           printf "\033[48;2;%d;%d;%dm", r,g,b;
           printf "\033[38;2;%d;%d;%dm", 255-r,255-g,255-b;
           printf "%s\033[0m", substr(s,colnum+1,1);
       }
       printf "\n";
   }'
   ```

### Git information not showing
1. **Check Git installation**: `git --version`
2. **Verify Git repository**: `git status`
3. **Check Oh-My-Zsh Git plugin**: Ensure it's enabled

### Performance issues
1. **Disable expensive functions**: Comment out battery, node, or kubectl functions
2. **Use minimal variant**: Switch to the minimal prompt style
3. **Update Zsh**: Newer versions have better performance

### Prompt layout issues
1. **Terminal width**: Ensure terminal is wide enough for two-line layout
2. **Font issues**: Try a different monospace font
3. **Unicode problems**: Ensure terminal supports Unicode

## Performance Optimization

### Lazy Loading
For better performance, you can lazy load expensive functions:
```bash
# Add to ~/.zshrc
zstyle ':prezto:module:prompt' lazy-loading yes
```

### Conditional Loading
Modify functions to only run when needed:
```bash
# Example: Only show Node version in Node projects
function mm_node_version() {
    if [[ -f package.json || -f node_modules ]] && command -v node >/dev/null 2>&1; then
        # ... show version
    fi
}
```

## Integration

The Midnight Moss Zsh theme pairs perfectly with:
- **Terminal emulators**: Alacritty, iTerm2, Kitty with Midnight Moss themes
- **Multiplexers**: tmux with Midnight Moss configuration
- **Editors**: Vim, VS Code, Sublime Text with matching themes
- **System tools**: All using the consistent color palette

This creates a unified development environment with cohesive colors across your entire workflow.

## Screenshots

*Note: Add screenshots showing the theme in various scenarios:*
- Clean repository
- Dirty repository with changes
- SSH session
- Python virtual environment
- Node.js project
- Error states
- Battery indicator (macOS)

## Contributing

Help improve the theme:
1. **Test on different terminals**: Ensure compatibility
2. **Add new functions**: Extend functionality
3. **Optimize performance**: Improve loading times
4. **Report issues**: Include terminal info and screenshots
5. **Suggest features**: Ideas for new prompt components

The theme aims to be both beautiful and functional, providing essential information at a glance while maintaining the calming, organic aesthetic of the Midnight Moss color palette.