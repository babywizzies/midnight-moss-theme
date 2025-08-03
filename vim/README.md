# Midnight Moss for Vim

A dark, organic colorscheme for Vim and Neovim with moss-inspired accents that create a soothing coding environment.

## Installation

### Using a Plugin Manager (Recommended)

#### vim-plug
Add to your `~/.vimrc` or `~/.config/nvim/init.vim`:
```vim
Plug 'yourusername/midnight-moss-theme', { 'rtp': 'vim' }

" Enable the colorscheme
colorscheme midnight-moss
```

#### Vundle
```vim
Plugin 'yourusername/midnight-moss-theme'

colorscheme midnight-moss
```

#### Pathogen
```bash
cd ~/.vim/bundle
git clone https://github.com/yourusername/midnight-moss-theme.git
```

### Manual Installation

#### Vim
```bash
mkdir -p ~/.vim/colors
curl -o ~/.vim/colors/midnight-moss.vim \
  https://raw.githubusercontent.com/yourusername/midnight-moss-theme/main/vim/midnight-moss.vim
```

#### Neovim
```bash
mkdir -p ~/.config/nvim/colors
curl -o ~/.config/nvim/colors/midnight-moss.vim \
  https://raw.githubusercontent.com/yourusername/midnight-moss-theme/main/vim/midnight-moss.vim
```

### Activation
Add to your configuration file:
```vim
colorscheme midnight-moss
```

## Requirements

### Terminal Support
- **256 colors minimum**: Required for optimal appearance
- **True color support**: Recommended for best experience
- **Check support**: Run `:echo has('termguicolors')` in Vim

### Font Recommendations
The theme works with any font but pairs excellently with:
- **JetBrains Mono** - Programming-focused with excellent readability
- **Fira Code** - Popular programming font with ligatures
- **SF Mono** - Clean Apple system monospace
- **Source Code Pro** - Adobe's programming font

### Vim Versions
- **Vim 8.0+**: Full support with all features
- **Neovim 0.4+**: Enhanced support with better terminal integration
- **Vim 7.4+**: Basic support (reduced feature set)

## Features

### Comprehensive Syntax Highlighting
- **Core Languages**: Python, JavaScript, HTML, CSS, Markdown
- **System Languages**: C, C++, Rust, Go
- **Modern Languages**: TypeScript, JSON, YAML
- **Markup**: Markdown, XML, LaTeX
- **Configuration**: Vim script, shell scripts

### Editor Integration
- **Line Numbers**: Subtle gutter styling
- **Search**: High-contrast search highlighting
- **Visual Mode**: Clear selection visualization
- **Folding**: Elegant code folding display
- **Diff Mode**: Clear diff highlighting
- **Spell Check**: Unobtrusive spell checking

### Plugin Support
- **NERDTree**: File explorer theming
- **fzf**: Fuzzy finder integration
- **vim-gitgutter**: Git change indicators
- **vim-startify**: Start screen theming
- **ALE**: Linting and error display
- **coc.nvim**: Language server integration

## Color Palette

### Background Colors
| Color | Name | Hex | Usage |
|-------|------|-----|-------|
| ![#1c1c1c](https://via.placeholder.com/12/1c1c1c/000000?text=+) | Deep Night | `#1c1c1c` | Primary background |
| ![#262626](https://via.placeholder.com/12/262626/000000?text=+) | Shadow | `#262626` | Secondary background |
| ![#2e2e2e](https://via.placeholder.com/12/2e2e2e/000000?text=+) | Charcoal | `#2e2e2e` | Tertiary background |
| ![#3a3a3a](https://via.placeholder.com/12/3a3a3a/000000?text=+) | Slate | `#3a3a3a` | Highlight background |

### Text Colors
| Color | Name | Hex | Usage |
|-------|------|-----|-------|
| ![#b8b8b8](https://via.placeholder.com/12/b8b8b8/000000?text=+) | Moonlight | `#b8b8b8` | Primary text |
| ![#c8c8c8](https://via.placeholder.com/12/c8c8c8/000000?text=+) | Silver | `#c8c8c8` | Bright text |
| ![#7a7a7a](https://via.placeholder.com/12/7a7a7a/000000?text=+) | Mist | `#7a7a7a` | Muted text/comments |

### Accent Colors
| Color | Name | Hex | Usage |
|-------|------|-----|-------|
| ![#5e8d87](https://via.placeholder.com/12/5e8d87/000000?text=+) | Moss | `#5e8d87` | Primary accent, operators |
| ![#6e8f7c](https://via.placeholder.com/12/6e8f7c/000000?text=+) | Forest | `#6e8f7c` | Types, classes |
| ![#5d7e97](https://via.placeholder.com/12/5d7e97/000000?text=+) | Ocean | `#5d7e97` | Functions, methods |
| ![#9b6a6c](https://via.placeholder.com/12/9b6a6c/000000?text=+) | Wine | `#9b6a6c` | Errors, exceptions |
| ![#826d94](https://via.placeholder.com/12/826d94/000000?text=+) | Sage | `#826d94` | Keywords, control flow |
| ![#a09262](https://via.placeholder.com/12/a09262/000000?text=+) | Amber | `#a09262` | Strings, text |
| ![#9d7a5a](https://via.placeholder.com/12/9d7a5a/000000?text=+) | Copper | `#9d7a5a` | Numbers, constants |

## Configuration

### Basic Setup
```vim
" Enable true color support (recommended)
if has('termguicolors')
  set termguicolors
endif

" Set the colorscheme
colorscheme midnight-moss

" Optional: Dark background (already set by the theme)
set background=dark
```

### Enhanced Configuration
```vim
" Recommended settings for the best experience
set number              " Show line numbers
set relativenumber      " Relative line numbers
set cursorline          " Highlight current line
set showmatch          " Highlight matching brackets
set hlsearch           " Highlight search results
set incsearch          " Incremental search

" Status line enhancement
set laststatus=2       " Always show status line
set ruler              " Show cursor position

" Syntax highlighting
syntax enable
filetype plugin indent on
```

### Terminal Integration
For Neovim, the theme automatically sets terminal colors:
```vim
" Terminal mode colors are automatically configured
" Access terminal with :terminal or :term
```

## Language-Specific Highlighting

### Python
- **Keywords**: Sage purple (`def`, `class`, `if`, `for`)
- **Strings**: Amber yellow (string literals)
- **Numbers**: Copper orange (numeric values)
- **Comments**: Mist gray (documentation)
- **Functions**: Ocean blue (function definitions)
- **Exceptions**: Wine red (error handling)

### JavaScript
- **Functions**: Ocean blue (`function`, method names)
- **Keywords**: Sage purple (`var`, `let`, `const`)
- **Strings**: Amber yellow (string literals)
- **Objects**: Forest green (object types)
- **Operators**: Moss teal (assignment, comparison)

### Markdown
- **Headers**: Forest green with bold styling
- **Links**: Moss teal with underline
- **Code**: Amber on dark background
- **Emphasis**: Italic and bold formatting
- **Lists**: Clear bullet point styling

### Git Commits
- **Summary**: Primary text color
- **Comments**: Muted italic text
- **File Types**: Color-coded by status
- **Branches**: Moss green highlighting

## Plugin Integration

### NERDTree
```vim
" Enhanced file tree appearance
let NERDTreeDirArrowExpandable = "▸"
let NERDTreeDirArrowCollapsible = "▾"
let NERDTreeShowHidden = 1
```

### fzf Integration
```vim
" fzf with Midnight Moss colors
let g:fzf_colors = {
  \ 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Search'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment']
\ }
```

### vim-airline
```vim
" Recommended airline theme
let g:airline_theme = 'dark'  " Or create a custom Midnight Moss airline theme
```

## Troubleshooting

### Colors appear incorrect
1. **Check terminal support**:
   ```vim
   :echo has('termguicolors')  " Should return 1
   :echo &t_Co                 " Should return 256 or higher
   ```

2. **Enable true colors**:
   ```vim
   set termguicolors
   ```

3. **Check terminal settings**: Ensure your terminal emulator supports 256 colors or true color

### Theme not loading
1. **Verify installation path**:
   ```vim
   :echo $VIMRUNTIME . "/colors"     " Check system colors directory  
   :echo &runtimepath               " Check runtime paths
   ```

2. **Check for syntax errors**: Open the colorscheme file and look for errors

3. **Try manual loading**:
   ```vim
   :colorscheme midnight-moss
   ```

### Performance issues
1. **Reduce syntax complexity**: Some complex syntax highlighting can slow down Vim
2. **Update Vim/Neovim**: Newer versions have better performance
3. **Check plugins**: Some plugins may conflict with colorscheme

## Customization

### Modifying Colors
You can customize specific highlight groups:
```vim
" After setting the colorscheme
colorscheme midnight-moss

" Custom modifications
highlight Comment guifg=#8a8a8a  " Lighter comments
highlight String guifg=#b8a052   " More golden strings
```

### Creating Variants
To create a light variant or different accent colors:
1. Copy the colorscheme file
2. Modify the color palette section
3. Adjust the highlight group definitions
4. Save with a new name

## Integration with Other Tools

The Midnight Moss Vim theme pairs perfectly with:
- **Terminal**: Alacritty, iTerm2, Kitty themes
- **Multiplexer**: tmux theme configuration
- **Shell**: Zsh/Oh-My-Zsh themes
- **Editor**: VS Code, Sublime Text themes

This creates a cohesive development environment with consistent colors across all your tools.

## Contributing

Found an issue or want to improve the theme?
1. Check language-specific highlighting
2. Test with your favorite plugins
3. Report issues with specific examples
4. Submit improvements for better compatibility

The theme aims to provide excellent highlighting for all popular languages and plugins while maintaining the calming, organic aesthetic of the Midnight Moss palette.