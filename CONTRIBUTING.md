# Contributing to Midnight Moss

Thank you for your interest in contributing to Midnight Moss! 🌿

## How to Contribute

### Adding New Application Support

We welcome ports of Midnight Moss to new applications! Here's how:

1. **Fork the repository**
2. **Create a new directory** for your application (e.g., `sublime-text/`, `vim/`, `tmux/`)
3. **Use the core color palette** (see below)
4. **Test your theme** thoroughly
5. **Add installation instructions** to the main README
6. **Submit a pull request**

### Core Color Palette

Always use these exact hex values to maintain consistency:

```css
/* Background Colors */
--bg-primary: #1c1c1c     /* Deep Night */
--bg-secondary: #262626   /* Shadow */
--bg-tertiary: #2e2e2e    /* Charcoal */
--bg-highlight: #3a3a3a   /* Slate */
--bg-border: #464646      /* Stone */
--bg-subtle: #525252      /* Ash */

/* Text Colors */
--text-primary: #b8b8b8   /* Moonlight */
--text-bright: #c8c8c8    /* Silver */
--text-muted: #7a7a7a     /* Mist */

/* Accent Colors */
--accent-primary: #5e8d87 /* Moss - primary accent */
--accent-success: #6e8f7c /* Forest - success, growth */
--accent-info: #5d7e97    /* Ocean - info, functions */
--accent-error: #9b6a6c   /* Wine - errors */
--accent-warning: #a09262 /* Amber - warnings, strings */
--accent-special: #826d94 /* Sage - keywords */
--accent-meta: #9d7a5a    /* Copper - constants, tags */
```

### Color Usage Guidelines

- **Primary accent** (`#5e8d87`): Links, selections, cursor, primary UI elements
- **Success/Growth** (`#6e8f7c`): Success states, git additions, positive indicators
- **Info/Functions** (`#5d7e97`): Function names, information, blue elements
- **Error/Warning** (`#9b6a6c`): Errors, deletions, dangerous actions
- **Strings/Constants** (`#a09262`): String literals, warnings, highlights
- **Keywords** (`#826d94`): Language keywords, special syntax
- **Metadata** (`#9d7a5a`): Constants, tags, metadata

### File Structure

Each application should have its own directory with:
- Theme files
- Installation instructions (README.md)
- Screenshots (if possible)

Example structure:
```
your-app/
├── README.md
├── midnight-moss.theme
└── screenshots/
    └── preview.png
```

### Testing

Before submitting:
1. Test the theme in the target application
2. Ensure all UI elements are visible and accessible
3. Check syntax highlighting (for code editors)
4. Verify the theme works in both light and dark system modes (if applicable)

### Documentation

- Update the main README.md with your application
- Include clear installation instructions
- Add screenshots if possible
- Document any special features or limitations

### Code Style

- Use consistent formatting
- Include comments explaining color choices
- Follow the application's theme format conventions
- Use descriptive names that reference our color names

### Pull Request Guidelines

1. **Clear title**: "Add [Application Name] support"
2. **Description**: What application, how to install, any special notes
3. **Screenshots**: Include before/after or preview images
4. **Testing**: Mention how you tested the theme

### Issues and Bugs

- Check existing issues before creating new ones
- Include application version and OS details
- Provide screenshots when relevant
- Be specific about what's not working

### Feature Requests

We love new ideas! For feature requests:
- Explain the use case
- Describe the expected behavior
- Consider if it fits the theme philosophy

## Development Setup

To work on Midnight Moss themes locally:

1. Clone the repository
2. Create your application directory
3. Use the color palette consistently
4. Test thoroughly before submitting

## Questions?

Feel free to open an issue for questions or join discussions in existing issues.

Thank you for helping make Midnight Moss available everywhere! 🚀