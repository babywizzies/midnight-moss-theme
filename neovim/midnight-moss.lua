-- Midnight Moss theme for Neovim
-- Dark organic palette with mossy green-teal accents

local colors = {
  bg = '#1c1c1c',
  bg_alt = '#262626',
  bg_highlight = '#2e2e2e',
  bg_popup = '#3a3a3a',
  bg_sidebar = '#262626',
  bg_float = '#2e2e2e',
  
  fg = '#b8b8b8',
  fg_alt = '#7a7a7a',
  fg_gutter = '#525252',
  
  grey = '#525252',
  grey_alt = '#464646',
  grey_dark = '#3a3a3a',
  
  moss = '#5e8d87',        -- Primary accent
  forest = '#6e8f7c',      -- Success/growth
  ocean = '#5d7e97',       -- Info/functions
  wine = '#9b6a6c',        -- Error/warning  
  sage = '#826d94',        -- Keywords
  amber = '#a09262',       -- Strings
  copper = '#9d7a5a',      -- Constants
  
  none = 'NONE',
}

local function highlight(group, color)
  local style = color.style and "gui=" .. color.style or "gui=NONE"
  local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
  local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
  local sp = color.sp and "guisp=" .. color.sp or ""
  
  vim.cmd("highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp)
end

-- Editor colors
highlight("Normal", { fg = colors.fg, bg = colors.bg })
highlight("NormalFloat", { fg = colors.fg, bg = colors.bg_float })
highlight("NormalNC", { fg = colors.fg, bg = colors.bg })
highlight("LineNr", { fg = colors.fg_gutter })
highlight("CursorLineNr", { fg = colors.fg_alt })
highlight("CursorLine", { bg = colors.bg_alt })
highlight("CursorColumn", { bg = colors.bg_alt })
highlight("ColorColumn", { bg = colors.bg_alt })
highlight("SignColumn", { bg = colors.bg })
highlight("Folded", { fg = colors.fg_alt, bg = colors.bg_highlight })
highlight("FoldColumn", { fg = colors.grey, bg = colors.bg })
highlight("VertSplit", { fg = colors.grey_dark, bg = colors.bg })
highlight("Pmenu", { fg = colors.fg, bg = colors.bg_popup })
highlight("PmenuSel", { fg = colors.bg, bg = colors.moss })
highlight("PmenuSbar", { bg = colors.grey_dark })
highlight("PmenuThumb", { bg = colors.grey })

-- Search
highlight("Search", { fg = colors.bg, bg = colors.amber })
highlight("IncSearch", { fg = colors.bg, bg = colors.moss })
highlight("Substitute", { fg = colors.bg, bg = colors.wine })

-- Visual
highlight("Visual", { bg = colors.grey_dark })
highlight("VisualNOS", { bg = colors.grey_dark })

-- Cursor
highlight("Cursor", { fg = colors.bg, bg = colors.moss })
highlight("TermCursor", { fg = colors.bg, bg = colors.moss })
highlight("TermCursorNC", { fg = colors.bg, bg = colors.grey })

-- Messages
highlight("ErrorMsg", { fg = colors.wine })
highlight("WarningMsg", { fg = colors.amber })
highlight("ModeMsg", { fg = colors.fg_alt })
highlight("MoreMsg", { fg = colors.ocean })
highlight("Question", { fg = colors.ocean })

-- Statusline
highlight("StatusLine", { fg = colors.fg, bg = colors.bg_highlight })
highlight("StatusLineNC", { fg = colors.fg_alt, bg = colors.bg_alt })
highlight("WildMenu", { fg = colors.bg, bg = colors.moss })

-- Tabline
highlight("TabLine", { fg = colors.fg_alt, bg = colors.bg_alt })
highlight("TabLineFill", { bg = colors.bg_alt })
highlight("TabLineSel", { fg = colors.fg, bg = colors.bg })

-- Syntax highlighting
highlight("Comment", { fg = colors.fg_alt, style = "italic" })
highlight("Constant", { fg = colors.copper })
highlight("String", { fg = colors.amber })
highlight("Character", { fg = colors.amber })
highlight("Number", { fg = colors.copper })
highlight("Boolean", { fg = colors.copper })
highlight("Float", { fg = colors.copper })
highlight("Identifier", { fg = colors.fg })
highlight("Function", { fg = colors.ocean })
highlight("Statement", { fg = colors.sage })
highlight("Conditional", { fg = colors.sage })
highlight("Repeat", { fg = colors.sage })
highlight("Label", { fg = colors.sage })
highlight("Operator", { fg = colors.moss })
highlight("Keyword", { fg = colors.sage })
highlight("Exception", { fg = colors.wine })
highlight("PreProc", { fg = colors.copper })
highlight("Include", { fg = colors.sage })
highlight("Define", { fg = colors.sage })
highlight("Macro", { fg = colors.copper })
highlight("PreCondit", { fg = colors.sage })
highlight("Type", { fg = colors.forest })
highlight("StorageClass", { fg = colors.sage })
highlight("Structure", { fg = colors.forest })
highlight("Typedef", { fg = colors.forest })
highlight("Special", { fg = colors.moss })
highlight("SpecialChar", { fg = colors.moss })
highlight("Tag", { fg = colors.moss })
highlight("Delimiter", { fg = colors.fg_alt })
highlight("SpecialComment", { fg = colors.fg_alt })
highlight("Debug", { fg = colors.wine })
highlight("Underlined", { fg = colors.moss, style = "underline" })
highlight("Ignore", { fg = colors.grey })
highlight("Error", { fg = colors.wine })
highlight("Todo", { fg = colors.amber, style = "bold" })

-- Diff
highlight("DiffAdd", { fg = colors.forest, bg = colors.bg })
highlight("DiffChange", { fg = colors.amber, bg = colors.bg })
highlight("DiffDelete", { fg = colors.wine, bg = colors.bg })
highlight("DiffText", { fg = colors.ocean, bg = colors.bg })

-- Spell
highlight("SpellBad", { fg = colors.wine, style = "underline" })
highlight("SpellCap", { fg = colors.amber, style = "underline" })
highlight("SpellLocal", { fg = colors.ocean, style = "underline" })
highlight("SpellRare", { fg = colors.sage, style = "underline" })

-- LSP
highlight("DiagnosticError", { fg = colors.wine })
highlight("DiagnosticWarn", { fg = colors.amber })
highlight("DiagnosticInfo", { fg = colors.ocean })
highlight("DiagnosticHint", { fg = colors.moss })
highlight("DiagnosticUnderlineError", { sp = colors.wine, style = "underline" })
highlight("DiagnosticUnderlineWarn", { sp = colors.amber, style = "underline" })
highlight("DiagnosticUnderlineInfo", { sp = colors.ocean, style = "underline" })
highlight("DiagnosticUnderlineHint", { sp = colors.moss, style = "underline" })

-- Tree-sitter
highlight("@comment", { fg = colors.fg_alt, style = "italic" })
highlight("@constant", { fg = colors.copper })
highlight("@constant.builtin", { fg = colors.copper })
highlight("@constant.macro", { fg = colors.copper })
highlight("@string", { fg = colors.amber })
highlight("@string.escape", { fg = colors.moss })
highlight("@string.special", { fg = colors.moss })
highlight("@character", { fg = colors.amber })
highlight("@number", { fg = colors.copper })
highlight("@boolean", { fg = colors.copper })
highlight("@float", { fg = colors.copper })
highlight("@function", { fg = colors.ocean })
highlight("@function.builtin", { fg = colors.ocean })
highlight("@function.macro", { fg = colors.ocean })
highlight("@parameter", { fg = colors.fg })
highlight("@method", { fg = colors.ocean })
highlight("@field", { fg = colors.fg })
highlight("@property", { fg = colors.fg })
highlight("@constructor", { fg = colors.forest })
highlight("@conditional", { fg = colors.sage })
highlight("@repeat", { fg = colors.sage })
highlight("@label", { fg = colors.sage })
highlight("@operator", { fg = colors.moss })
highlight("@keyword", { fg = colors.sage })
highlight("@exception", { fg = colors.wine })
highlight("@variable", { fg = colors.fg })
highlight("@type", { fg = colors.forest })
highlight("@type.definition", { fg = colors.forest })
highlight("@storageclass", { fg = colors.sage })
highlight("@namespace", { fg = colors.fg })
highlight("@include", { fg = colors.sage })
highlight("@preproc", { fg = colors.copper })
highlight("@debug", { fg = colors.wine })
highlight("@tag", { fg = colors.moss })

print("Midnight Moss theme loaded 🌿")