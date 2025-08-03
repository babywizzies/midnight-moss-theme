" Midnight Moss colorscheme for Vim
" Dark organic palette with mossy green-teal accents
" 
" Maintainer: Midnight Moss Theme
" License: MIT
" 
" Installation:
" 1. Copy this file to ~/.vim/colors/midnight-moss.vim
" 2. Add 'colorscheme midnight-moss' to your ~/.vimrc
" 3. For best results, ensure your terminal supports 256 colors

" === INITIALIZATION ===
set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "midnight-moss"

" === COLOR PALETTE ===
" Define our Midnight Moss color palette
let s:colors = {}

" Background colors
let s:colors.bg_primary   = {'gui': '#1c1c1c', 'cterm': 234}  " Deep Night
let s:colors.bg_secondary = {'gui': '#262626', 'cterm': 235}  " Shadow  
let s:colors.bg_tertiary  = {'gui': '#2e2e2e', 'cterm': 236}  " Charcoal
let s:colors.bg_highlight = {'gui': '#3a3a3a', 'cterm': 237}  " Slate
let s:colors.bg_border    = {'gui': '#464646', 'cterm': 238}  " Stone
let s:colors.bg_subtle    = {'gui': '#525252', 'cterm': 239}  " Ash

" Foreground colors
let s:colors.fg_primary = {'gui': '#b8b8b8', 'cterm': 249}   " Moonlight
let s:colors.fg_bright  = {'gui': '#c8c8c8', 'cterm': 251}   " Silver
let s:colors.fg_muted   = {'gui': '#7a7a7a', 'cterm': 244}   " Mist

" Accent colors
let s:colors.moss   = {'gui': '#5e8d87', 'cterm': 73}        " Primary accent
let s:colors.forest = {'gui': '#6e8f7c', 'cterm': 108}       " Success/growth
let s:colors.ocean  = {'gui': '#5d7e97', 'cterm': 67}        " Info/functions
let s:colors.wine   = {'gui': '#9b6a6c', 'cterm': 131}       " Error/warning
let s:colors.sage   = {'gui': '#826d94', 'cterm': 103}       " Keywords/special  
let s:colors.amber  = {'gui': '#a09262', 'cterm': 143}       " Strings/constants
let s:colors.copper = {'gui': '#9d7a5a', 'cterm': 137}       " Tags/metadata

" Special colors
let s:colors.none = {'gui': 'NONE', 'cterm': 'NONE'}

" === HELPER FUNCTION ===
function! s:HL(group, fg, bg, attr)
  let l:fg = has_key(a:fg, 'gui') ? a:fg : s:colors.none
  let l:bg = has_key(a:bg, 'gui') ? a:bg : s:colors.none
  
  let l:cmd = 'hi ' . a:group
  let l:cmd .= ' guifg=' . l:fg.gui . ' ctermfg=' . l:fg.cterm
  let l:cmd .= ' guibg=' . l:bg.gui . ' ctermbg=' . l:bg.cterm
  let l:cmd .= ' gui=' . a:attr . ' cterm=' . a:attr
  
  execute l:cmd
endfunction

" === EDITOR COLORS ===
call s:HL('Normal', s:colors.fg_primary, s:colors.bg_primary, 'NONE')
call s:HL('Cursor', s:colors.bg_primary, s:colors.moss, 'NONE')
call s:HL('CursorLine', s:colors.none, s:colors.bg_secondary, 'NONE')
call s:HL('CursorColumn', s:colors.none, s:colors.bg_secondary, 'NONE')
call s:HL('ColorColumn', s:colors.none, s:colors.bg_secondary, 'NONE')

" Line numbers
call s:HL('LineNr', s:colors.bg_subtle, s:colors.none, 'NONE')
call s:HL('CursorLineNr', s:colors.fg_muted, s:colors.none, 'NONE')
call s:HL('SignColumn', s:colors.bg_subtle, s:colors.bg_primary, 'NONE')

" Visual selection
call s:HL('Visual', s:colors.fg_bright, s:colors.bg_highlight, 'NONE')
call s:HL('VisualNOS', s:colors.fg_bright, s:colors.bg_highlight, 'NONE')

" Search
call s:HL('Search', s:colors.bg_primary, s:colors.amber, 'NONE')
call s:HL('IncSearch', s:colors.bg_primary, s:colors.moss, 'NONE')

" Folds
call s:HL('Folded', s:colors.fg_muted, s:colors.bg_tertiary, 'NONE')
call s:HL('FoldColumn', s:colors.bg_subtle, s:colors.bg_primary, 'NONE')

" Splits
call s:HL('VertSplit', s:colors.bg_border, s:colors.bg_primary, 'NONE')

" Status line
call s:HL('StatusLine', s:colors.fg_primary, s:colors.bg_tertiary, 'NONE')
call s:HL('StatusLineNC', s:colors.fg_muted, s:colors.bg_secondary, 'NONE')

" Tab line
call s:HL('TabLine', s:colors.fg_muted, s:colors.bg_secondary, 'NONE')
call s:HL('TabLineFill', s:colors.none, s:colors.bg_secondary, 'NONE')
call s:HL('TabLineSel', s:colors.fg_bright, s:colors.bg_primary, 'NONE')

" Popup menu
call s:HL('Pmenu', s:colors.fg_primary, s:colors.bg_tertiary, 'NONE')
call s:HL('PmenuSel', s:colors.bg_primary, s:colors.moss, 'NONE')
call s:HL('PmenuSbar', s:colors.none, s:colors.bg_border, 'NONE')
call s:HL('PmenuThumb', s:colors.none, s:colors.bg_subtle, 'NONE')

" Messages
call s:HL('ErrorMsg', s:colors.wine, s:colors.none, 'NONE')
call s:HL('WarningMsg', s:colors.amber, s:colors.none, 'NONE')
call s:HL('ModeMsg', s:colors.fg_muted, s:colors.none, 'NONE')
call s:HL('MoreMsg', s:colors.ocean, s:colors.none, 'NONE')
call s:HL('Question', s:colors.ocean, s:colors.none, 'NONE')

" Matching
call s:HL('MatchParen', s:colors.moss, s:colors.bg_highlight, 'bold')

" === SYNTAX HIGHLIGHTING ===
" Comments
call s:HL('Comment', s:colors.fg_muted, s:colors.none, 'italic')

" Constants
call s:HL('Constant', s:colors.copper, s:colors.none, 'NONE')
call s:HL('String', s:colors.amber, s:colors.none, 'NONE')
call s:HL('Character', s:colors.amber, s:colors.none, 'NONE')
call s:HL('Number', s:colors.copper, s:colors.none, 'NONE')
call s:HL('Boolean', s:colors.copper, s:colors.none, 'bold')
call s:HL('Float', s:colors.copper, s:colors.none, 'NONE')

" Identifiers
call s:HL('Identifier', s:colors.fg_primary, s:colors.none, 'NONE')
call s:HL('Function', s:colors.ocean, s:colors.none, 'bold')

" Statements
call s:HL('Statement', s:colors.sage, s:colors.none, 'bold')
call s:HL('Conditional', s:colors.sage, s:colors.none, 'bold')
call s:HL('Repeat', s:colors.sage, s:colors.none, 'bold')
call s:HL('Label', s:colors.sage, s:colors.none, 'NONE')
call s:HL('Operator', s:colors.moss, s:colors.none, 'NONE')
call s:HL('Keyword', s:colors.sage, s:colors.none, 'bold')
call s:HL('Exception', s:colors.wine, s:colors.none, 'bold')

" Preprocessing
call s:HL('PreProc', s:colors.copper, s:colors.none, 'NONE')
call s:HL('Include', s:colors.sage, s:colors.none, 'NONE')
call s:HL('Define', s:colors.sage, s:colors.none, 'NONE')
call s:HL('Macro', s:colors.copper, s:colors.none, 'NONE')
call s:HL('PreCondit', s:colors.sage, s:colors.none, 'NONE')

" Types
call s:HL('Type', s:colors.forest, s:colors.none, 'bold')
call s:HL('StorageClass', s:colors.sage, s:colors.none, 'NONE')
call s:HL('Structure', s:colors.forest, s:colors.none, 'NONE')
call s:HL('Typedef', s:colors.forest, s:colors.none, 'NONE')

" Special
call s:HL('Special', s:colors.moss, s:colors.none, 'NONE')
call s:HL('SpecialChar', s:colors.moss, s:colors.none, 'NONE')
call s:HL('Tag', s:colors.moss, s:colors.none, 'NONE')
call s:HL('Delimiter', s:colors.fg_muted, s:colors.none, 'NONE')
call s:HL('SpecialComment', s:colors.fg_muted, s:colors.none, 'italic')
call s:HL('Debug', s:colors.wine, s:colors.none, 'NONE')

" Other
call s:HL('Underlined', s:colors.moss, s:colors.none, 'underline')
call s:HL('Ignore', s:colors.bg_subtle, s:colors.none, 'NONE')
call s:HL('Error', s:colors.wine, s:colors.none, 'NONE')
call s:HL('Todo', s:colors.amber, s:colors.none, 'bold')

" === DIFF HIGHLIGHTING ===
call s:HL('DiffAdd', s:colors.forest, s:colors.bg_primary, 'NONE')
call s:HL('DiffChange', s:colors.amber, s:colors.bg_primary, 'NONE')
call s:HL('DiffDelete', s:colors.wine, s:colors.bg_primary, 'NONE')
call s:HL('DiffText', s:colors.ocean, s:colors.bg_primary, 'NONE')

" === SPELL CHECK ===
call s:HL('SpellBad', s:colors.wine, s:colors.none, 'underline')
call s:HL('SpellCap', s:colors.amber, s:colors.none, 'underline')
call s:HL('SpellLocal', s:colors.ocean, s:colors.none, 'underline')
call s:HL('SpellRare', s:colors.sage, s:colors.none, 'underline')

" === LANGUAGE SPECIFIC ===

" HTML/XML
call s:HL('htmlTag', s:colors.fg_muted, s:colors.none, 'NONE')
call s:HL('htmlTagName', s:colors.wine, s:colors.none, 'bold')
call s:HL('htmlArg', s:colors.moss, s:colors.none, 'NONE')
call s:HL('htmlEndTag', s:colors.fg_muted, s:colors.none, 'NONE')

" CSS
call s:HL('cssTagName', s:colors.forest, s:colors.none, 'NONE')
call s:HL('cssClassName', s:colors.forest, s:colors.none, 'NONE')
call s:HL('cssIdentifier', s:colors.forest, s:colors.none, 'NONE')
call s:HL('cssProp', s:colors.moss, s:colors.none, 'NONE')
call s:HL('cssValueLength', s:colors.copper, s:colors.none, 'NONE')
call s:HL('cssColor', s:colors.copper, s:colors.none, 'NONE')

" JavaScript
call s:HL('javaScriptFunction', s:colors.sage, s:colors.none, 'bold')
call s:HL('javaScriptIdentifier', s:colors.sage, s:colors.none, 'NONE')
call s:HL('javaScriptNull', s:colors.copper, s:colors.none, 'bold')
call s:HL('javaScriptNumber', s:colors.copper, s:colors.none, 'NONE')
call s:HL('javaScriptBraces', s:colors.fg_muted, s:colors.none, 'NONE')

" Python
call s:HL('pythonStatement', s:colors.sage, s:colors.none, 'bold')
call s:HL('pythonBuiltin', s:colors.ocean, s:colors.none, 'NONE')
call s:HL('pythonException', s:colors.wine, s:colors.none, 'bold')
call s:HL('pythonOperator', s:colors.moss, s:colors.none, 'NONE')
call s:HL('pythonDecorator', s:colors.copper, s:colors.none, 'NONE')

" Markdown
call s:HL('markdownHeadingDelimiter', s:colors.forest, s:colors.none, 'bold')
call s:HL('markdownH1', s:colors.forest, s:colors.none, 'bold')
call s:HL('markdownH2', s:colors.forest, s:colors.none, 'bold')
call s:HL('markdownH3', s:colors.forest, s:colors.none, 'bold')
call s:HL('markdownLinkText', s:colors.moss, s:colors.none, 'underline')
call s:HL('markdownUrl', s:colors.moss, s:colors.none, 'NONE')
call s:HL('markdownCode', s:colors.amber, s:colors.bg_secondary, 'NONE')
call s:HL('markdownCodeBlock', s:colors.amber, s:colors.bg_secondary, 'NONE')
call s:HL('markdownBold', s:colors.fg_bright, s:colors.none, 'bold')
call s:HL('markdownItalic', s:colors.fg_primary, s:colors.none, 'italic')

" Git
call s:HL('gitcommitOverflow', s:colors.wine, s:colors.none, 'NONE')
call s:HL('gitcommitSummary', s:colors.fg_primary, s:colors.none, 'NONE')
call s:HL('gitcommitComment', s:colors.fg_muted, s:colors.none, 'italic')
call s:HL('gitcommitUntracked', s:colors.fg_muted, s:colors.none, 'NONE')
call s:HL('gitcommitDiscarded', s:colors.wine, s:colors.none, 'NONE')
call s:HL('gitcommitSelected', s:colors.forest, s:colors.none, 'NONE')
call s:HL('gitcommitHeader', s:colors.sage, s:colors.none, 'NONE')
call s:HL('gitcommitSelectedType', s:colors.ocean, s:colors.none, 'NONE')
call s:HL('gitcommitUnmergedType', s:colors.wine, s:colors.none, 'NONE')
call s:HL('gitcommitDiscardedType', s:colors.wine, s:colors.none, 'NONE')
call s:HL('gitcommitBranch', s:colors.moss, s:colors.none, 'bold')
call s:HL('gitcommitUntrackedFile', s:colors.amber, s:colors.none, 'NONE')
call s:HL('gitcommitUnmergedFile', s:colors.wine, s:colors.none, 'bold')
call s:HL('gitcommitDiscardedFile', s:colors.wine, s:colors.none, 'NONE')
call s:HL('gitcommitSelectedFile', s:colors.forest, s:colors.none, 'bold')

" === PLUGIN SUPPORT ===

" vim-gitgutter
call s:HL('GitGutterAdd', s:colors.forest, s:colors.none, 'NONE')
call s:HL('GitGutterChange', s:colors.amber, s:colors.none, 'NONE')
call s:HL('GitGutterDelete', s:colors.wine, s:colors.none, 'NONE')
call s:HL('GitGutterChangeDelete', s:colors.wine, s:colors.none, 'NONE')

" NERDTree
call s:HL('NERDTreeDir', s:colors.forest, s:colors.none, 'bold')
call s:HL('NERDTreeDirSlash', s:colors.moss, s:colors.none, 'NONE')
call s:HL('NERDTreeFile', s:colors.fg_primary, s:colors.none, 'NONE')
call s:HL('NERDTreeExecFile', s:colors.ocean, s:colors.none, 'NONE')
call s:HL('NERDTreeOpenable', s:colors.moss, s:colors.none, 'NONE')
call s:HL('NERDTreeClosable', s:colors.moss, s:colors.none, 'NONE')
call s:HL('NERDTreeUp', s:colors.fg_muted, s:colors.none, 'NONE')
call s:HL('NERDTreeCWD', s:colors.sage, s:colors.none, 'bold')

" fzf
call s:HL('fzf1', s:colors.wine, s:colors.bg_secondary, 'NONE')
call s:HL('fzf2', s:colors.ocean, s:colors.bg_secondary, 'NONE')
call s:HL('fzf3', s:colors.forest, s:colors.bg_secondary, 'NONE')

" vim-startify
call s:HL('StartifyBracket', s:colors.fg_muted, s:colors.none, 'NONE')
call s:HL('StartifyFile', s:colors.fg_primary, s:colors.none, 'NONE')
call s:HL('StartifyFooter', s:colors.moss, s:colors.none, 'NONE')
call s:HL('StartifyHeader', s:colors.forest, s:colors.none, 'NONE')
call s:HL('StartifyNumber', s:colors.ocean, s:colors.none, 'NONE')
call s:HL('StartifyPath', s:colors.fg_muted, s:colors.none, 'NONE')
call s:HL('StartifySection', s:colors.sage, s:colors.none, 'bold')
call s:HL('StartifySelect', s:colors.moss, s:colors.none, 'NONE')
call s:HL('StartifySlash', s:colors.fg_muted, s:colors.none, 'NONE')
call s:HL('StartifySpecial', s:colors.copper, s:colors.none, 'NONE')

" ale (Asynchronous Lint Engine)
call s:HL('ALEErrorSign', s:colors.wine, s:colors.none, 'NONE')
call s:HL('ALEWarningSign', s:colors.amber, s:colors.none, 'NONE')
call s:HL('ALEInfoSign', s:colors.ocean, s:colors.none, 'NONE')

" coc.nvim
call s:HL('CocErrorSign', s:colors.wine, s:colors.none, 'NONE')
call s:HL('CocWarningSign', s:colors.amber, s:colors.none, 'NONE')
call s:HL('CocInfoSign', s:colors.ocean, s:colors.none, 'NONE')
call s:HL('CocHintSign', s:colors.moss, s:colors.none, 'NONE')

" === TERMINAL COLORS ===
if has('nvim')
  let g:terminal_color_0  = s:colors.bg_primary.gui    " black
  let g:terminal_color_1  = s:colors.wine.gui          " red
  let g:terminal_color_2  = s:colors.forest.gui        " green
  let g:terminal_color_3  = s:colors.amber.gui         " yellow
  let g:terminal_color_4  = s:colors.ocean.gui         " blue
  let g:terminal_color_5  = s:colors.sage.gui          " magenta
  let g:terminal_color_6  = s:colors.moss.gui          " cyan
  let g:terminal_color_7  = s:colors.fg_primary.gui    " white
  let g:terminal_color_8  = s:colors.bg_subtle.gui     " bright black
  let g:terminal_color_9  = s:colors.wine.gui          " bright red
  let g:terminal_color_10 = s:colors.forest.gui        " bright green
  let g:terminal_color_11 = s:colors.amber.gui         " bright yellow
  let g:terminal_color_12 = s:colors.ocean.gui         " bright blue
  let g:terminal_color_13 = s:colors.sage.gui          " bright magenta
  let g:terminal_color_14 = s:colors.moss.gui          " bright cyan
  let g:terminal_color_15 = s:colors.fg_bright.gui     " bright white
endif

" Clean up
unlet s:colors