local opt = vim.opt -- for conciseness
local api = vim.api

-- line numbers
opt.relativenumber = true
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
vim.g.copilot_assume_mapped = true
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
  ruby = {'rubocop'},
  rust = {'rustc'},
  cpp = {'clangtidy'},
  c = {'clangtidy'},
  java = {'javac'},
  php = {'phpcs'},
  perl = {'perlcritic'},
  haskell = {'hlint'},
  scala = {'scalac'},
  elm = {'elm'},
  erlang = {'erlc'},
  elixir = {'credo'},
  julia = {'julia'},
  r = {'lintr'},
  dart = {'dartanalyzer'},
  fsharp = {'fsharplint'},
  crystal = {'crystal'},
  ocaml = {'ocaml'},
  swift = {'swift'},
  kotlin = {'kotlinc'},
  nix = {'nix'},
  puppet = {'puppet'},
  terraform = {'terraform'},
  dockerfile = {'dockerfile_lint'},
  graphql = {'graphql-schema-linter'},
  vue = {'vls'},
  svelte = {'svelte'},
  tex = {'chktex'},
  latex = {'chktex'},
  texinfo = {'makeinfo'},
  vimwiki = {'vimwiki'},
  pandoc = {'pandoc'},
  pandoc_markdown = {'pandoc'},
  pandoc_rst = {'pandoc'},
  pandoc_asciidoc = {'pandoc'},
  pandoc_org = {'pandoc'},
  pandoc_html = {'pandoc'},
  pandoc_tex = {'pandoc'},
  pandoc_texinfo = {'pandoc'},
  pandoc_mediawiki = {'pandoc'},
  pandoc_dokuwiki = {'pandoc'},
  pandoc_zimwiki = {'pandoc'},
  pandoc_jats = {'pandoc'},
  pandoc_opml = {'pandoc'},
}

vim.g.ale_fixers =  {
  ["*"] = {'remove_trailing_lines', 'trim_whitespace'},
  python = {'autopep8'},
  javascript = {'prettier'},
}

vim.g.ale_fix_on_save = 1
vim.g.ale_completion_enabled = 0
vim.g.ale_completion_autoimport = 1
