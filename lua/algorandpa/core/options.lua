local opt = vim.opt -- for conciseness
local api = vim.api

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.softtabstop = 2

-- lne wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- apparance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")
api.nvim_set_option("clipboard", "unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

opt.number = true
opt.titlestring = [[%f %h%m%r%w - %{v:progname} %{luaeval('current_tab()')}]]
opt.signcolumn = 'yes'

-- Show trailing whitespace
api.nvim_set_option("list", true)
api.nvim_set_option("listchars", "eol:$,nbsp:_,tab:>-,trail:~,extends:>,precedes:<")

vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
