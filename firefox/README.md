# Midnight Moss for Firefox

A comprehensive dark theme for Firefox that transforms the browser interface with organic moss-inspired colors. Includes both interface styling (userChrome.css) and internal page styling (userContent.css).

## ⚠️ Important Prerequisites

Before installing, you **must** enable custom stylesheets in Firefox:

1. Type `about:config` in the Firefox address bar
2. Click "Accept the Risk and Continue"
3. Search for `toolkit.legacyUserProfileCustomizations.stylesheets`
4. Toggle it to `true` (double-click or use the toggle button)

## Installation

### Automatic Installation (Recommended)

```bash
# Create the chrome directory
mkdir -p "$(find ~/.mozilla/firefox -name "*.default*" | head -1)/chrome"

# Download the theme files
PROFILE_DIR="$(find ~/.mozilla/firefox -name "*.default*" | head -1)/chrome"
curl -o "$PROFILE_DIR/userChrome.css" https://raw.githubusercontent.com/yourusername/midnight-moss-theme/main/firefox/userChrome.css
curl -o "$PROFILE_DIR/userContent.css" https://raw.githubusercontent.com/yourusername/midnight-moss-theme/main/firefox/userContent.css

echo "Midnight Moss theme installed! Restart Firefox to apply."
```

### Manual Installation

1. **Find your Firefox profile folder**:
   - Type `about:support` in the address bar
   - Under "Application Basics", click "Open Folder" next to "Profile Folder"

2. **Create the chrome folder**:
   - In the profile folder, create a new folder named `chrome` (lowercase)

3. **Copy theme files**:
   - Copy `userChrome.css` to the `chrome` folder
   - Copy `userContent.css` to the `chrome` folder

4. **Restart Firefox**

### File Structure
Your profile folder should look like this:
```
Profile Folder/
├── chrome/
│   ├── userChrome.css  (interface styling)
│   └── userContent.css (internal pages styling)
├── extensions/
├── storage/
└── ...
```

## What's Included

### userChrome.css (Interface Theming)
- **Navigation Bar**: Dark organic backgrounds with moss accents
- **Tabs**: Elegant styling with active tab highlighting
- **URL Bar**: Focused moss green borders and suggestions
- **Bookmarks Toolbar**: Subtle dark styling
- **Context Menus**: Consistent dark theme with hover effects
- **Sidebar**: Dark backgrounds for bookmarks, history, etc.  
- **Developer Tools**: Dark integration
- **Private Browsing**: Special sage purple accents

### userContent.css (Internal Pages)
- **New Tab Page**: Dark background with styled elements
- **about:preferences**: Complete settings page theming
- **about:addons**: Extension manager styling
- **about:config**: Advanced configuration theming
- **Error Pages**: Styled network and security error pages
- **Developer Tools**: Internal dev pages theming
- **All about: pages**: Comprehensive coverage

## Features

### Visual Enhancements
- **Smooth Transitions**: Subtle animations for all interactive elements
- **Consistent Color Palette**: Unified moss-inspired theme throughout
- **Enhanced Readability**: Optimized contrast ratios
- **Modern Design**: Clean, minimal aesthetic

### Accessibility
- **High Contrast Mode**: Automatic adjustments for accessibility needs
- **Keyboard Navigation**: Clear focus indicators
- **Screen Reader Friendly**: Maintains semantic structure

### Customization Support
- **Compact Mode**: Optimized for compact UI density
- **Fullscreen Mode**: Proper styling for fullscreen browsing
- **Multiple Window Support**: Consistent across all Firefox windows

## Color Palette

| Element | Color | Hex | Usage |
|---------|-------|-----|-------|
| **Primary Background** | Deep Night | `#1c1c1c` | Main interface |
| **Secondary Background** | Shadow | `#262626` | Toolbars, tabs |
| **Tertiary Background** | Charcoal | `#2e2e2e` | Cards, panels |
| **Primary Text** | Moonlight | `#b8b8b8` | Regular text |
| **Bright Text** | Silver | `#c8c8c8` | Emphasized text |
| **Muted Text** | Mist | `#7a7a7a` | Secondary text |
| **Primary Accent** | Moss | `#5e8d87` | Links, focus, active elements |
| **Success** | Forest | `#6e8f7c` | Positive actions |
| **Warning** | Amber | `#a09262` | Warnings, highlights |
| **Error** | Wine | `#9b6a6c` | Errors, close buttons |

## Customization

### Changing Accent Colors
To modify the moss green accent, edit the CSS variables:
```css
:root {
  --midnight-moss: #your-color !important;
}
```

### Adjusting Opacity
For more transparency:
```css
/* Add to userChrome.css */
#main-window {
  opacity: 0.95 !important;
}
```

### Custom Sidebar Width
```css
/* Add to userChrome.css */
#sidebar-box {
  min-width: 250px !important;
  max-width: 400px !important;
}
```

## Troubleshooting

### Theme not loading
1. **Check file location**: Ensure files are in `Profile/chrome/` folder
2. **Verify file names**: Must be exactly `userChrome.css` and `userContent.css`
3. **Enable stylesheets**: Confirm `toolkit.legacyUserProfileCustomizations.stylesheets` is `true`
4. **Restart Firefox**: Required after any changes
5. **Check for typos**: CSS syntax errors prevent loading

### Elements not styled correctly
1. **Update Firefox**: Newer versions may have changed element selectors
2. **Disable other themes**: Conflicts with other CSS themes
3. **Clear cache**: Try refreshing with `Ctrl+F5`

### Performance issues
1. **Reduce transitions**: Comment out the transitions section
2. **Simplify gradients**: Replace gradients with solid colors
3. **Remove shadows**: Comment out box-shadow properties

### Private browsing differences
Private browsing mode uses special sage purple accents instead of moss green for visual distinction.

## Compatibility

### Firefox Versions
- **Firefox 70+**: Full compatibility
- **Firefox 57-69**: Most features work
- **Firefox ESR**: Supported

### Operating Systems
- **Windows**: Full support
- **macOS**: Full support  
- **Linux**: Full support

### Firefox Variants
- **Firefox**: Primary target
- **Firefox Developer Edition**: Compatible
- **Firefox Nightly**: Compatible (may need updates)
- **Firefox ESR**: Compatible

## Maintenance

The theme may need updates when Firefox changes its interface structure. Check for updates regularly, especially after major Firefox releases.

### Manual Updates
1. Download the latest CSS files
2. Replace the existing files in your `chrome` folder
3. Restart Firefox

## Integration

Pairs perfectly with other Midnight Moss themes:
- **Terminal**: Alacritty, iTerm2, Kitty themes
- **Code Editors**: VS Code, Sublime Text themes  
- **System**: tmux, zsh themes

Creates a cohesive dark development environment across all your tools.

## Security Note

userChrome.css and userContent.css only modify the visual appearance of Firefox. They cannot:
- Access web page content
- Modify browser security settings
- Send data to external servers
- Execute JavaScript code

The theme is purely cosmetic and safe to use.