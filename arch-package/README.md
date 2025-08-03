# Midnight Moss Themes - Arch Linux Package

This directory contains the PKGBUILD and related files for distributing Midnight Moss themes through the Arch User Repository (AUR).

## Package Information

- **Package Name**: `midnight-moss-themes`
- **Description**: Dark organic theme collection with moss-inspired accents for multiple applications
- **Architecture**: `any` (architecture-independent)
- **License**: MIT
- **Maintainer**: Midnight Moss Theme Project

## Installation

### From AUR (Recommended)

Once published to AUR, install with your favorite AUR helper:

```bash
# Using yay
yay -S midnight-moss-themes

# Using paru
paru -S midnight-moss-themes

# Using pamac
pamac install midnight-moss-themes
```

### Manual Installation

```bash
# Clone this repository
git clone https://github.com/babywizzies/midnight-moss-theme.git
cd midnight-moss-theme/arch-package

# Build and install
makepkg -si
```

## What's Included

The package installs themes for the following applications:

### Core Applications
- **Alacritty** - Modern terminal emulator (TOML + YAML configs)
- **Firefox** - Web browser interface theming (userChrome.css + userContent.css)
- **Kitty** - GPU-accelerated terminal emulator
- **tmux** - Terminal multiplexer with status bar theming
- **Vim/Neovim** - Text editor colorscheme with plugin support
- **Zsh** - Shell theme with Oh-My-Zsh integration

### Code Editors
- **VS Code** - Comprehensive editor theme with syntax highlighting
- **Sublime Text** - Modern JSON color scheme format
- **JetBrains IDEs** - IntelliJ IDEA, PyCharm, WebStorm, etc. (.icls format)

### Additional Tools
- **Obsidian** - Note-taking application theme
- **Starship** - Cross-shell prompt configuration
- **Zellij** - Modern terminal multiplexer
- **iTerm2** - macOS terminal emulator (for cross-platform users)

## File Locations

After installation, theme files are located in:

```
/usr/share/themes/midnight-moss/
├── alacritty/
├── firefox/
├── jetbrains/
├── kitty/
├── neovim/
├── obsidian/
├── starship/
├── sublime-text/
├── tmux/
├── vim/
├── vscode/
├── zellij/
└── zsh/
```

Documentation is available in:
```
/usr/share/doc/midnight-moss/
├── README.md
├── CONTRIBUTING.md
├── alacritty-README.md
├── firefox-README.md
├── jetbrains-README.md
├── obsidian-README.md
├── sublime-text-README.md
├── tmux-README.md
├── vim-README.md
├── vscode-README.md
└── zsh-README.md
```

## Quick Setup

The package provides helpful post-install messages, but here are the essentials:

### Alacritty
```bash
cp /usr/share/themes/midnight-moss/alacritty/midnight-moss.toml ~/.config/alacritty/themes/
# Add to alacritty.toml: import = ["~/.config/alacritty/themes/midnight-moss.toml"]
```

### Firefox
```bash
# Enable custom stylesheets first in about:config
cp /usr/share/themes/midnight-moss/firefox/* ~/.mozilla/firefox/*/chrome/
```

### Kitty
```bash
echo 'include /usr/share/themes/midnight-moss/kitty/midnight-moss.conf' >> ~/.config/kitty/kitty.conf
```

### Vim/Neovim
```bash
mkdir -p ~/.vim/colors
cp /usr/share/themes/midnight-moss/vim/midnight-moss.vim ~/.vim/colors/
# Add to .vimrc: colorscheme midnight-moss
```

### tmux
```bash
echo 'source-file /usr/share/themes/midnight-moss/tmux/midnight-moss.conf' >> ~/.tmux.conf
```

### Zsh (Oh-My-Zsh)
```bash
cp /usr/share/themes/midnight-moss/zsh/midnight-moss.zsh-theme ~/.oh-my-zsh/themes/
# Set in ~/.zshrc: ZSH_THEME="midnight-moss"
```

## Dependencies

The package has no hard dependencies, but includes optional dependencies for supported applications:

- `alacritty` - Terminal emulator theme support
- `firefox` - Browser interface theming
- `kitty` - Terminal emulator theme support
- `neovim` - Text editor colorscheme
- `obsidian` - Note-taking app theme
- `starship` - Cross-shell prompt theme
- `sublime-text-4` - Text editor theme
- `tmux` - Terminal multiplexer theme
- `vim` - Text editor colorscheme
- `visual-studio-code-bin` - Code editor theme
- `zsh` - Shell theme support
- `oh-my-zsh-git` - Zsh framework theme support

## Package Development

### Building Locally

```bash
# Clone repository
git clone https://github.com/babywizzies/midnight-moss-theme.git
cd midnight-moss-theme/arch-package

# Generate package
makepkg

# Install locally
makepkg -i

# Clean build files
makepkg -c
```

### Updating .SRCINFO

When modifying the PKGBUILD:

```bash
makepkg --printsrcinfo > .SRCINFO
```

### Publishing to AUR

1. **Create AUR account** at https://aur.archlinux.org/
2. **Set up SSH keys** for AUR
3. **Clone AUR repository**:
   ```bash
   git clone ssh://aur@aur.archlinux.org/midnight-moss-themes.git aur-midnight-moss-themes
   ```
4. **Copy files**:
   ```bash
   cp PKGBUILD .SRCINFO aur-midnight-moss-themes/
   ```
5. **Commit and push**:
   ```bash
   cd aur-midnight-moss-themes
   git add PKGBUILD .SRCINFO
   git commit -m "Initial import of midnight-moss-themes"
   git push
   ```

## Version Management

### Updating the Package

When releasing a new version of the themes:

1. **Update version** in PKGBUILD:
   ```bash
   pkgver=1.1.0
   pkgrel=1
   ```

2. **Update checksums** (or use SKIP for development):
   ```bash
   updpkgsums
   ```

3. **Generate new .SRCINFO**:
   ```bash
   makepkg --printsrcinfo > .SRCINFO
   ```

4. **Test build**:
   ```bash
   makepkg -f
   ```

### Release Checklist

- [ ] All theme files tested and working
- [ ] Version bumped in PKGBUILD
- [ ] .SRCINFO updated
- [ ] Package builds successfully
- [ ] Installation tested on clean system
- [ ] Post-install messages accurate
- [ ] Documentation updated

## Troubleshooting

### Build Issues

**Missing source file**:
```bash
# Ensure the GitHub release exists
curl -I https://github.com/babywizzies/midnight-moss-theme/archive/v1.0.0.tar.gz
```

**Permission errors**:
```bash
# Run in clean environment
makepkg -c
```

**Checksum errors**:
```bash
# Update checksums
updpkgsums
```

### Installation Issues

**Files not found**:
- Check if package was built with correct source
- Verify file paths in PKGBUILD

**Permission issues**:
- Ensure proper install directories
- Check file permissions in package()

## Support

For package-specific issues:
- Check AUR comments (when published)
- Open issue in main repository
- Contact package maintainer

For theme issues:
- See individual application README files
- Check main repository documentation
- Report bugs with specific examples

The Arch Linux package provides a convenient way to install and manage Midnight Moss themes across your entire system, with automatic handling of file placement and helpful setup instructions.