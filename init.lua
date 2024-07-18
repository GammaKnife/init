-- Settings

vim.o.shell = "/usr/bin/zsh"                    -- Set shell to zsh

vim.opt.backup = false                          -- creates a backup file
vim.opt.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
vim.opt.cmdheight = 1                           -- more space in the neovim command line for displaying messages
vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
vim.opt.conceallevel = 0                        -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8"                  -- the encoding written to a file
vim.opt.hlsearch = true                         -- highlight all matches on previous search pattern
vim.opt.ignorecase = true                       -- ignore case in search patterns
vim.opt.mouse = "a"                             -- allow the mouse to be used in neovim
vim.opt.pumheight = 10                          -- pop up menu height
vim.opt.showmode = false                        -- Show things like -- INSERT --
vim.opt.smartcase = true                        -- smart case
vim.opt.smartindent = true                      -- make indenting smarter again
vim.opt.splitbelow = true                       -- force all horizontal splits to go below current window
vim.opt.splitright = true                       -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false                        -- creates a swapfile
vim.opt.termguicolors = true                    -- set term gui colors (most terminals support this)
vim.opt.timeoutlen = 1000                       -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.undofile = true                         -- enable persistent undo
vim.opt.updatetime = 300                        -- faster completion (4000ms default)
vim.opt.writebackup = false                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.expandtab = true                        -- convert tabs to spaces
vim.opt.shiftwidth = 2                          -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2                             -- insert 2 spaces for a tab
vim.opt.number = true                           -- set numbered lines
vim.opt.relativenumber = true                   -- set relative line numbers
vim.opt.laststatus = 3                          -- only the last window will always have a status line
vim.opt.showcmd = false                         -- hide (partial) command in the last line of the screen (for performance)
vim.opt.ruler = false                           -- Enable or disable the line number and cursor position
vim.opt.numberwidth = 4                         -- minimal number of columns to use for the line number {default 4}
vim.opt.wrap = false                            -- display lines as one long line
vim.opt.scrolloff = 8                           -- minimal number of screen lines to keep above and below the cursor
vim.opt.sidescrolloff = 8                       -- minimal number of screen columns to keep to the left and right of the cursor if wrap is `false`
vim.opt.fillchars.eob=" "                       -- show empty lines at the end of a buffer as ` ` {default `~`}
vim.opt.shortmess:append "c"                    -- hide all the completion messages, e.g. "-- XXX completion (YYY)", "match 1 of 2", "The only match", "Pattern not found"
vim.opt.whichwrap:append("<,>,[,],h,l")         -- keys allowed to move to the previous/next line when the beginning/end of line is reached
vim.opt.iskeyword:append("-")                   -- treats words with `-` as single words
vim.opt.formatoptions:remove({ "c", "r", "o" }) -- This is a sequence of letters which describes how automatic formatting is to be done
vim.opt.linebreak = true

-- Keymaps

local keymap = vim.keymap.set

-- Modes
-- "n" == normal_mode
-- "i" == insert_mode
-- "v" == visual_mode
-- "x" == visual_block_mode
-- "t" == term_mode
-- "c" == command_mode

-- Rebinds
vim.g.mapleader = " "

-- Normal mode --

-- Better buffer navigation
keymap("n", "<A-h>", ":bprevious <CR>", opts)
keymap("n", "<A-l>", ":bnext <CR>", opts)

-- Move text up or down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Auto cancel search highlighting with ESC
keymap("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>", opts)

-- Visual mode --

-- Set Omni complete func to something better
vim.api.nvim_set_keymap('i', 'j', 'pumvisible() ? "<C-n>" : "j"', { expr = true })
vim.api.nvim_set_keymap('i', 'k', 'pumvisible() ? "<C-p>" : "k"', { expr = true })


-- Royal Theme

-- Background and Foreground
local bg = "#282a2e"
local fg = "#dfce9d"

-- Other Netural Colors
local bg_0 = "#3f3f3c"
local fg_0 = "#847c66"

local bg_1 = "#9a8a5c"
local fg_1 = "#aea27e"

-- Theme Colors
local red = "#d16363"
local green = "#63d1ab"
local yellow = "#d1b563"
local blue = "#63b4d1"
local sand_orange = "#d1a563"
local cyan = "#63d0d1"
local dark_blue = "#6394d1"
local dark_orange = "#d19b63"

-- Visual highlights
vim.api.nvim_set_hl(0, "SpecialKey", { ctermfg=6, fg=Cyan, })
vim.api.nvim_set_hl(0, "TermCursor", { cterm=reverse, gui=reverse, })
vim.api.nvim_set_hl(0, "NonText", { ctermfg=4, gui=bold, fg=blue, })
vim.api.nvim_set_hl(0, "Directory", { ctermfg=6, fg=cyan, })
vim.api.nvim_set_hl(0, "ErrorMsg", { ctermfg=15, ctermbg=1, fg=fg,bg=red, })
vim.api.nvim_set_hl(0, "IncSearch", { cterm=reverse, gui=reverse, })
vim.api.nvim_set_hl(0, "Search",  { ctermfg=0, ctermbg=11, fg=bg_0, bg=yellow, })
vim.api.nvim_set_hl(0, "MoreMsg", { ctermfg=6, gui=bold, fg=cyan, })
vim.api.nvim_set_hl(0, "ModeMsg", { cterm=bold, gui=bold, })
vim.api.nvim_set_hl(0, "LineNR", { ctermfg=7, fg=bg_1, })
vim.api.nvim_set_hl(0, "CursorLineNr", { ctermfg=7, fg=bg_1, })
vim.api.nvim_set_hl(0, "Question", { ctermfg=2, fg=green, })
vim.api.nvim_set_hl(0, "StatusLineNC", { cterm=reverse, gui=reverse, })
vim.api.nvim_set_hl(0, "Title", { ctermfg=5, gui=bold, fg=sand_orange, })
vim.api.nvim_set_hl(0, "Visual", { ctermbg=0, bg=bg_0, })
vim.api.nvim_set_hl(0, "WarningMsg", { ctermfg=1, fg=red, })
vim.api.nvim_set_hl(0, "WildMenu", { ctermfg=0, ctermbg=11, fg=bg_0, bg=yellow, })
vim.api.nvim_set_hl(0, "Folded", { ctermfg=14, ctermbg=7, fg=cyan, bg=bg_0, })
vim.api.nvim_set_hl(0, "FoldColumn", { ctermfg=14, ctermbg=7, fg=cyan, bg=bg_0, })
vim.api.nvim_set_hl(0, "DiffAdd", { ctermbg=4, bg=blue, })
vim.api.nvim_set_hl(0, "DiffChange", { ctermbg=5, bg=sand_orange, })
vim.api.nvim_set_hl(0, "DiffDelete", { ctermfg=14, ctermbg=0, gui=bold, fg=cyan, bg=bg_0, })
vim.api.nvim_set_hl(0, "DiffText", { cterm=bold, ctermbg=9, gui=bold, bg=red, })
vim.api.nvim_set_hl(0, "SignColumn", { ctermfg=14, ctermbg=0, fg=cyan, bg=bg_0, })
vim.api.nvim_set_hl(0, "Conceal", { ctermfg=3, ctermbg=0, fg=yellow, bg=bg_0, })
vim.api.nvim_set_hl(0, "SpellBad", { ctermbg=9, gui=undercurl, sp=red, })
vim.api.nvim_set_hl(0, "SpellCap", { ctermbg=12, gui=undercurl, sp=blue, })
vim.api.nvim_set_hl(0, "SpellRare", { ctermbg=13, gui=undercurl, sp=sand_orange, })
vim.api.nvim_set_hl(0, "SpellLocal", { ctermbg=14, gui=undercurl, sp=cyan, })
vim.api.nvim_set_hl(0, "PMenu", { fg=fg, bg=bg_0, ctermfg="NONE", ctermbg=0, })
vim.api.nvim_set_hl(0, "PmenuSel", { ctermfg=15, ctermbg=0, fg=fg, bg=bg_0, })
vim.api.nvim_set_hl(0, "PmenuSbar", { ctermbg=0, bg=bg_0, })
vim.api.nvim_set_hl(0, "PmenuThumb", { ctermbg=7, bg=bg_1, })
vim.api.nvim_set_hl(0, "TabLine", { cterm=underline, ctermfg=15, ctermbg=8, gui=underline, bg=fg_0, })
vim.api.nvim_set_hl(0, "TabLineSel", { cterm=bold, gui=bold, })
vim.api.nvim_set_hl(0, "TabLineFill", { cterm=reverse, gui=reverse, })
vim.api.nvim_set_hl(0, "CursorColumn", { ctermbg=0, bg=bg_0, })
vim.api.nvim_set_hl(0, "ColorColumn", { cterm=underline, bg=bg_0, })
vim.api.nvim_set_hl(0, "WinBar", { cterm=bold, gui=bold, })
vim.api.nvim_set_hl(0, "Cursor", { fg=bg, bg=fg, })
vim.api.nvim_set_hl(0, "lCursor", { fg=bg, bg=fg, })
vim.api.nvim_set_hl(0, "RedrawDebugNormal", { cterm=reverse, gui=reverse, })
vim.api.nvim_set_hl(0, "RedrawDebugClear", { ctermbg=11, bg=yellow, })
vim.api.nvim_set_hl(0, "RedrawDebugComposed", { ctermbg=10, bg=green, })
vim.api.nvim_set_hl(0, "RedrawDebugRecompose", { ctermbg=9, bg=red, })

-- Syntax highlights
vim.api.nvim_set_hl(0, "Error", { ctermfg=15, ctermbg=9, fg=fg_1, bg=red, })
vim.api.nvim_set_hl(0, "Todo", { ctermfg=0, ctermbg=11, fg=bg_0, bg=yellow, })
vim.api.nvim_set_hl(0, "String", { ctermfg=2, fg=green, })
vim.api.nvim_set_hl(0, "Constant", { ctermfg=5, fg=sand_orange, })
vim.api.nvim_set_hl(0, "Character", { ctermfg=5, fg=sand_orange, })
vim.api.nvim_set_hl(0, "Number", { ctermfg=5, fg=sand_orange, })
vim.api.nvim_set_hl(0, "Boolean", { ctermfg=5, fg=sand_orange, })
vim.api.nvim_set_hl(0, "Float", { ctermfg=5, cterm=bold, fg=sand_orange, gui=bold })
vim.api.nvim_set_hl(0, "Function", { ctermfg=2, fg=green, })
vim.api.nvim_set_hl(0, "Identifier",  { ctermfg=6, fg=cyan, })
vim.api.nvim_set_hl(0, "Conditional", { ctermfg=4, fg=blue, })
vim.api.nvim_set_hl(0, "Statement", { ctermfg=4, fg=blue, })
vim.api.nvim_set_hl(0, "Repeat", { ctermfg=4, fg=blue, })
vim.api.nvim_set_hl(0, "Label", { ctermfg=4, fg=blue, })
vim.api.nvim_set_hl(0, "Operator", { ctermfg=6, fg=cyan, })
vim.api.nvim_set_hl(0, "Keyword", { ctermfg=4, fg=blue, })
vim.api.nvim_set_hl(0, "Exception", { ctermfg=4, fg=blue, })
vim.api.nvim_set_hl(0, "Include", { ctermfg=3, fg=green, })
vim.api.nvim_set_hl(0, "PreProc", { ctermfg=3, fg=dark_blue, })
vim.api.nvim_set_hl(0, "Define", { ctermfg=3, fg=dark_blue, })
vim.api.nvim_set_hl(0, "Macro", {  ctermfg=3, fg=dark_blue, })
vim.api.nvim_set_hl(0, "PreCondit", { ctermfg=3, fg=dark_blue, })
vim.api.nvim_set_hl(0, "Type", { ctermfg=5, fg=dark_orange, })
vim.api.nvim_set_hl(0, "Structure", { ctermfg=15, fg=white, })
vim.api.nvim_set_hl(0, "Typedef", { ctermfg=5, fg=dark_orange, })
vim.api.nvim_set_hl(0, "Special", { ctermfg=5, fg=dark_orange, })
vim.api.nvim_set_hl(0, "Comment", { ctermfg=8, fg=fg_0, })

-- Diag highlights
vim.api.nvim_set_hl(0, "DiagnosticError", { ctermfg=1, fg=red, })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { ctermfg=2, fg=yellow, })
vim.api.nvim_set_hl(0, "DiagnosticInfo", { ctermfg=6, fg=cyan, })
vim.api.nvim_set_hl(0, "DiagnosticHint", { ctermfg=6, fg=cyan, })
vim.api.nvim_set_hl(0, "DiagnosticOk", { ctermfg=2, fg=green, })

-- C highlights
vim.api.nvim_set_hl(0, 'cOperator', { ctermfg=3, fg=yellow, })
vim.api.nvim_set_hl(0, 'cPreCondit', { ctermfg=5, fg=dark_organge })

-- C# highlights
vim.api.nvim_set_hl(0, 'csClass', { ctermfg=4, fg=dark_blue, })
vim.api.nvim_set_hl(0, 'csAttribute', { fg = gui0A, ctermfg = cterm0A })
vim.api.nvim_set_hl(0, 'csModifier', { fg = gui0E, ctermfg = cterm0E })
vim.api.nvim_set_hl(0, 'csType', { ctermfg=5, fg=dark_orange })
vim.api.nvim_set_hl(0, 'csUnspecifiedStatement', { fg = gui0D, ctermfg = cterm0D })
vim.api.nvim_set_hl(0, 'csContextualStatement', { fg = gui0E, ctermfg = cterm0E })
vim.api.nvim_set_hl(0, 'csNewDecleration', { fg = gui08, ctermfg = cterm08 })

-- Python highlighting
vim.api.nvim_set_hl(0, 'pythonOperator', { ctermfg=6, fg=cyan, })
vim.api.nvim_set_hl(0, 'pythonRepeat', { ctermfg=4, fg=dark_blue })
vim.api.nvim_set_hl(0, 'pythonInclude', { ctermfg=4, fg=dark_blue })
vim.api.nvim_set_hl(0, 'pythonStatement', { ctermfg=4, fg=dark_blue })

-- Ruby highlighting
vim.api.nvim_set_hl(0, 'rubyAttribute', { ctermfg=4, fg=dark_blue })
vim.api.nvim_set_hl(0, 'rubyConstant', { ctermfg=5, fg=sand_orange })
vim.api.nvim_set_hl(0, 'rubyInterpolationDelimiter', { ctermfg=6, fg=cyan })
vim.api.nvim_set_hl(0, 'rubyRegexp', { ctermfg=2, fg=green })
vim.api.nvim_set_hl(0, 'rubySymbol', { ctermfg=2, fg=green })
vim.api.nvim_set_hl(0, 'rubyStringDelimiter', { ctermfg=2, fg=green })