# 🌿 Midnight Moss

> A dark, organic color theme with mossy green-teal accents for developers who love the night

Midnight Moss is a carefully crafted dark theme that brings together the deep tranquility of midnight with the organic vitality of moss. Born from a terminal rice configuration, this theme offers a sophisticated palette that's easy on the eyes during those long coding sessions.

## 🎨 Color Palette

| Color | Hex | Usage |
|-------|-----|-------|
| **Deep Night** | `#1c1c1c` | Primary background |
| **Shadow** | `#262626` | Secondary background |
| **Charcoal** | `#2e2e2e` | Tertiary background |
| **Slate** | `#3a3a3a` | UI elements |
| **Stone** | `#464646` | Borders, dividers |
| **Ash** | `#525252` | Subtle highlights |
| **Moonlight** | `#b8b8b8` | Primary text |
| **Silver** | `#c8c8c8` | Bright text |
| **Mist** | `#7a7a7a` | Muted text |
| **Moss** | `#5e8d87` | Primary accent (links, selection) |
| **Forest** | `#6e8f7c` | Success, growth |
| **Ocean** | `#5d7e97` | Information, functions |
| **Wine** | `#9b6a6c` | Errors, warnings |
| **Sage** | `#826d94` | Keywords, special |
| **Amber** | `#a09262` | Strings, constants |
| **Copper** | `#9d7a5a` | Tags, metadata |

## 🚀 Available For

### ✅ Currently Available
- [Obsidian](#obsidian) - Note-taking and knowledge management
- [Starship](#starship) - Cross-shell prompt
- [Zellij](#zellij) - Terminal multiplexer

### 🔄 Coming Soon
- VS Code - Code editor
- iTerm2 - Terminal emulator
- Neovim - Text editor
- Kitty - Terminal emulator
- Alacritty - Terminal emulator
- Hyper - Terminal emulator
- Sublime Text - Text editor
- JetBrains IDEs - Development environments
- Firefox - Web browser
- Chrome - Web browser

## 📦 Installation

### Obsidian

1. Download the `obsidian/` folder from this repository
2. Copy the contents to your vault's `.obsidian/themes/midnight-moss/` directory
3. Go to Settings → Appearance → Themes
4. Select "Midnight Moss" from the dropdown

### Starship

Add this to your `~/.config/starship.toml`:

```toml
# Copy the configuration from starship/starship.toml
```

### Zellij

Add this to your `~/.config/zellij/config.kdl`:

```kdl
theme "midnight-moss"

themes {
    midnight-moss {
        // Copy the theme configuration from zellij/config.kdl
    }
}
```

## 🖼️ Previews

### Obsidian
*Screenshots coming soon*

### Terminal
*Screenshots coming soon*

### Code Editor
*Screenshots coming soon*

## 🎯 Philosophy

Midnight Moss is designed around three core principles:

1. **Organic Harmony** - Colors inspired by nature's night palette
2. **Developer Focus** - Optimized contrast ratios and syntax highlighting
3. **Visual Calm** - Reduced eye strain for extended use

The theme uses a sophisticated gradient of grays as the foundation, with carefully selected accent colors that provide excellent readability while maintaining visual interest. The primary accent, a muted teal (`#5e8d87`), evokes the gentle glow of moss in moonlight.

## 🛠️ Development

Want to port Midnight Moss to a new application? Here's the core palette:

```css
:root {
  --mm-bg-primary: #1c1c1c;
  --mm-bg-secondary: #262626;
  --mm-bg-tertiary: #2e2e2e;
  --mm-text-primary: #b8b8b8;
  --mm-text-secondary: #7a7a7a;
  --mm-accent-primary: #5e8d87;
  --mm-accent-success: #6e8f7c;
  --mm-accent-info: #5d7e97;
  --mm-accent-warning: #a09262;
  --mm-accent-error: #9b6a6c;
}
```

## 🤝 Contributing

We welcome contributions! Whether you want to:
- Port the theme to a new application
- Improve existing implementations
- Report bugs or suggest improvements
- Add documentation or screenshots

Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## 📜 License

This theme is released under the MIT License. See [LICENSE](LICENSE) for details.

## 🙏 Credits

Originally created as a terminal rice configuration, Midnight Moss represents the evolution of a personal color scheme into a comprehensive theme ecosystem.

---

**Enjoy coding in the dark with Midnight Moss! 🌙🌿**

*If you love this theme, please ⭐ star the repository and share it with fellow developers!*