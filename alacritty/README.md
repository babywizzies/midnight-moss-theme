# Midnight Moss for Alacritty

A dark, organic color scheme for Alacritty terminal emulator with moss-inspired accents that create a calming terminal experience.

## Installation

### Modern Alacritty (v0.13+) - TOML Format

1. **Create themes directory**:
   ```bash
   mkdir -p ~/.config/alacritty/themes
   ```

2. **Download the theme**:
   ```bash
   curl -o ~/.config/alacritty/themes/midnight-moss.toml \
     https://raw.githubusercontent.com/yourusername/midnight-moss-theme/main/alacritty/midnight-moss.toml
   ```

3. **Import in your main config**:
   Add this line to your `~/.config/alacritty/alacritty.toml`:
   ```toml
   import = ["~/.config/alacritty/themes/midnight-moss.toml"]
   ```

### Legacy Alacritty (< v0.13) - YAML Format

1. **Download the YAML theme**:
   ```bash
   curl -o ~/.config/alacritty/midnight-moss.yml \
     https://raw.githubusercontent.com/yourusername/midnight-moss-theme/main/alacritty/midnight-moss.yml
   ```

2. **Option A - Import colors only**:
   Merge the `colors:` section from `midnight-moss.yml` into your existing `alacritty.yml`

3. **Option B - Use as complete config**:
   ```bash
   cp midnight-moss.yml ~/.config/alacritty/alacritty.yml
   ```

### Manual Installation

Copy the color configuration from either file format and paste into your Alacritty config file.

## Features

### Comprehensive Color Palette
- **16 Standard Colors**: Carefully chosen ANSI colors for compatibility
- **Bright Colors**: Enhanced versions for better highlighting
- **Dim Colors**: Subtle variants for sophisticated text rendering
- **Indexed Colors**: Extended palette for advanced terminal applications

### Special Elements
- **Cursor**: Moss green with high visibility
- **Selection**: Moss background with silver text
- **Search**: Amber highlights for active matches
- **Hints**: URL and hint highlighting
- **Vi Mode**: Sage cursor for modal editing

### Enhanced Features
- **Search Integration**: Clear highlighting for search matches
- **Link Detection**: Styled URL hints
- **Bell Notification**: Subtle amber flash
- **Vi Mode Support**: Distinct cursor for vim-style editing

## Color Reference

### Primary Palette
| Color | Name | Hex | Usage |
|-------|------|-----|-------|
| ![#1c1c1c](https://via.placeholder.com/12/1c1c1c/000000?text=+) | Deep Night | `#1c1c1c` | Background |
| ![#b8b8b8](https://via.placeholder.com/12/b8b8b8/000000?text=+) | Moonlight | `#b8b8b8` | Foreground |
| ![#5e8d87](https://via.placeholder.com/12/5e8d87/000000?text=+) | Moss | `#5e8d87` | Accent/Cursor |
| ![#c8c8c8](https://via.placeholder.com/12/c8c8c8/000000?text=+) | Silver | `#c8c8c8` | Bright Text |

### ANSI Colors (0-15)
| Index | Color | Name | Hex |
|-------|-------|------|-----|
| 0/8 | Black/Bright Black | Deep Night/Ash | `#1c1c1c`/`#525252` |
| 1/9 | Red/Bright Red | Wine/Bright Wine | `#9b6a6c`/`#a37174` |
| 2/10 | Green/Bright Green | Forest/Bright Forest | `#6e8f7c`/`#7a9e8c` |
| 3/11 | Yellow/Bright Yellow | Amber/Bright Amber | `#a09262`/`#afa072` |
| 4/12 | Blue/Bright Blue | Ocean/Bright Ocean | `#5d7e97`/`#6d8ca7` |
| 5/13 | Magenta/Bright Magenta | Sage/Bright Sage | `#826d94`/`#927ba4` |
| 6/14 | Cyan/Bright Cyan | Moss/Bright Moss | `#5e8d87`/`#6e9b95` |
| 7/15 | White/Bright White | Moonlight/Silver | `#b8b8b8`/`#c8c8c8` |

## Configuration Options

### Font Recommendations
The theme pairs excellently with these fonts:
```toml
[font]
size = 14.0

[font.normal]
family = "JetBrains Mono"
style = "Regular"

[font.bold]
family = "JetBrains Mono"  
style = "Bold"

[font.italic]
family = "JetBrains Mono"
style = "Italic"
```

Alternative fonts that work well:
- **Fira Code** - Programming ligatures
- **SF Mono** - macOS system monospace
- **Cascadia Code** - Windows system monospace
- **Source Code Pro** - Adobe's programming font

### Window Opacity
For a more subtle appearance:
```toml
[window]
opacity = 0.95
```

### Cursor Styling
```toml
[cursor]
style = "Block"     # or "Underline", "Beam"
blinking = "Off"    # or "On"
blink_interval = 750
```

## Terminal Integration

### Shell Prompt Compatibility
Works excellently with:
- **Starship** - Use the included Midnight Moss starship theme
- **Oh My Zsh** - Compatible with most themes
- **Powerline** - Full color support
- **Pure** - Minimal and clean appearance

### Application Compatibility
Optimized colors for:
- **Vim/Neovim** - Use the matching Midnight Moss vim theme
- **tmux** - Use the included tmux theme configuration
- **Git** - Clear diff highlighting
- **Less/More** - Readable pager colors
- **Man pages** - Enhanced readability

## Troubleshooting

### Colors not displaying correctly
1. **Check color support**:
   ```bash
   echo $COLORTERM  # Should show 'truecolor' or '24bit'
   ```

2. **Test color display**:
   ```bash
   curl -s https://gist.githubusercontent.com/lifepillar/09a44b8cf0f9397465614e622979107f/raw/24-bit-color.sh | bash
   ```

3. **Update Alacritty**: Ensure you're using a recent version with full color support

### TOML vs YAML format
- **Alacritty 0.13+**: Use TOML format (`.toml` files)
- **Older versions**: Use YAML format (`.yml` files)
- **Check version**: `alacritty --version`

### Theme not loading
1. **Check file location**:
   ```bash
   ls -la ~/.config/alacritty/
   ```

2. **Validate syntax**:
   ```bash
   alacritty --print-events --config-file ~/.config/alacritty/alacritty.toml
   ```

3. **Check import path**: Ensure the import statement uses the correct file path

### Performance considerations
- **Opacity**: Lower opacity values may impact performance
- **Font size**: Larger fonts require more GPU resources
- **Background blur**: Disable for better performance on older hardware

## Integration with Other Themes

Midnight Moss Alacritty pairs perfectly with:
- **tmux**: Use the Midnight Moss tmux theme
- **Neovim**: Install the Midnight Moss colorscheme
- **Zsh**: Use the Midnight Moss zsh theme
- **Git**: Configured for optimal diff highlighting

The consistent color palette creates a cohesive terminal experience across all your development tools.