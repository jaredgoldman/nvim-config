local opt = vim.opt -- for conciseness
local api = vim.api

-- line numbers
opt.number = true

-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
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

-- Copilot
vim.g.copilot_no_tab_map = true

-- ALE
vim.g.ale_linters = {
  javascript = {'eslint'},
  typescript = {'eslint'},
  typescriptreact = {'eslint'},
  javascriptreact = {'eslint'},
  python = {'flake8'},
  sh = {'shellcheck'},
  markdown = {'markdownlint'},
  html = {'tidy'},
  css = {'stylelint'},
  json = {'jsonlint'},
  yaml = {'yamllint'},
  lua = {'luacheck'},
  vim = {'vint'},
  go = {'golangci-lint'},
  rust = {'rustc'},
  c = {'clangtidy'},
  java = {'javac'},
  php = {'phpcs'},
  perl = {'perlcritic'},
  dockerfile = {'dockerfile_lint'},
  graphql = {'graphql-schema-linter'},
  vue = {'vls'},
  svelte = {'svelte'},
}

vim.g.ale_fixers = {
  ['*'] = {'remove_trailing_lines', 'trim_whitespace'},
  python = {'autopep8'},
  javascript = {'prettier'},
}

vim.g.ale_python_flake8_options = '--max-line-length=88'
vim.g.ale_javascript_prettier_options = '--single-quote --tab-width 4 --semi false'
vim.g.ale_fix_on_save = 1
vim.g.ale_disable_lsp = 1
