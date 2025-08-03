# Midnight Moss for tmux

A dark, organic theme for tmux with moss-inspired colors and a sophisticated status bar design.

## Installation

### Method 1: Source the theme file
1. Download `midnight-moss.conf`
2. Copy it to your tmux configuration directory:
   ```bash
   mkdir -p ~/.config/tmux
   cp midnight-moss.conf ~/.config/tmux/
   ```
3. Add this line to your `~/.tmux.conf`:
   ```bash
   source-file ~/.config/tmux/midnight-moss.conf
   ```

### Method 2: Direct integration
1. Copy the contents of `midnight-moss.conf` 
2. Paste them directly into your `~/.tmux.conf` file

### Method 3: One-liner installation
```bash
curl -o ~/.config/tmux/midnight-moss.conf https://raw.githubusercontent.com/yourusername/midnight-moss-theme/main/tmux/midnight-moss.conf
echo "source-file ~/.config/tmux/midnight-moss.conf" >> ~/.tmux.conf
```

## Reload Configuration
After installation, reload your tmux configuration:
```bash
tmux source-file ~/.tmux.conf
```
Or from within tmux: `Ctrl+b :source-file ~/.tmux.conf`

## Features

### Status Bar Design
- **Left Side**: Session name with moss accent background
- **Right Side**: Hostname, date, and time with gradient backgrounds
- **Clean Separators**: Powerline-style transitions between segments

### Window Status
- **Active Window**: Highlighted with moss green background
- **Inactive Windows**: Subtle charcoal background
- **Activity Indicators**: Amber background for activity, wine for bells
- **Last Window**: Special highlighting for easy navigation

### Pane Styling
- **Active Pane**: Moss green border for clear focus indication
- **Inactive Panes**: Subtle stone gray borders
- **Background**: Deep night background for reduced eye strain

### Visual Elements
- **Copy Mode**: Moss green highlighting
- **Messages**: High contrast moss background
- **Clock**: 24-hour format with moss accent
- **Pane Numbers**: Clear visibility during display-panes

## Color Scheme

The theme uses our signature Midnight Moss palette:

| Element | Color | Hex |
|---------|-------|-----|
| **Primary Background** | Deep Night | `#1c1c1c` |
| **Status Bar** | Shadow | `#262626` |
| **Active Window** | Moss | `#5e8d87` |
| **Primary Text** | Moonlight | `#b8b8b8` |
| **Borders** | Stone | `#464646` |
| **Activity** | Amber | `#a09262` |
| **Errors/Bells** | Wine | `#9b6a6c` |

## Plugin Integration

### TPM (Tmux Plugin Manager)
The theme includes styling for popular tmux plugins:

```bash
# Add to your .tmux.conf for enhanced functionality
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-prefix-highlight'
set -g @plugin 'tmux-plugins/tmux-cpu'
set -g @plugin 'tmux-plugins/tmux-battery'
```

### Supported Plugins
- **tmux-prefix-highlight**: Styled prefix and copy mode indicators
- **tmux-cpu**: CPU and memory usage with color-coded thresholds
- **tmux-battery**: Battery status with appropriate icons
- **tmux-resurrect**: Session persistence (no styling conflicts)

## Customization

### Adjusting Colors
You can modify colors by changing the hex values in the configuration:

```bash
# Example: Change moss accent to blue
# Replace all instances of #5e8d87 with #5d7e97
sed -i 's/#5e8d87/#5d7e97/g' ~/.config/tmux/midnight-moss.conf
```

### Status Bar Customization
Modify the status bar format by editing these lines:
```bash
set -g status-left "#[bg=#5e8d87,fg=#1c1c1c,bold] #{session_name} #[bg=#262626,fg=#5e8d87]"
set -g status-right "..."  # Your custom right status
```

### Window Format
Customize window display format:
```bash
set -g window-status-format " #I:#W#{?window_flags,#{window_flags}, } "
```

## Compatibility

- **tmux 2.1+**: Full compatibility with all features
- **tmux 3.0+**: Enhanced with newer styling options
- **Terminal**: Requires 256-color terminal support
- **Fonts**: Works with any font, optimized for powerline fonts

## Troubleshooting

### Colors not displaying correctly
1. Ensure your terminal supports 256 colors:
   ```bash
   echo $TERM  # Should show something like 'screen-256color' or 'xterm-256color'
   ```
2. Force tmux to use 256 colors:
   ```bash
   tmux -2
   ```

### Status bar not updating
1. Check the status interval setting:
   ```bash
   set -g status-interval 1
   ```
2. Reload the configuration:
   ```bash
   tmux source-file ~/.tmux.conf
   ```

### Powerline symbols not showing
Install a powerline-compatible font or modify the separators:
```bash
# Replace powerline symbols with simple characters
set -g status-left "#[bg=#5e8d87,fg=#1c1c1c,bold] #{session_name} |"
```

The Midnight Moss tmux theme creates a cohesive terminal multiplexing experience that pairs perfectly with other applications in the theme ecosystem.