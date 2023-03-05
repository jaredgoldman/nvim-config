-- Standard vim options
require("algorandpa.plugins-setup")
require("algorandpa.core.options")
require("algorandpa.core.keymaps")
require("algorandpa.core.colorscheme")
require("algorandpa.plugins.comment")
require("algorandpa.plugins.nvim-tree")
require("algorandpa.plugins.lualine")
require("algorandpa.plugins.telescope")
require("algorandpa.plugins.nvim-cmp")

-- LSP setup
local lsp = require("lsp-zero")

lsp.preset("recommended")
lsp.nvim_workspace()
lsp.setup()
