vim.g.mapleader = "<Space>"

require("config.lazy")

vim.cmd("colorscheme tokyonight")

require("config.autocmd")
require("config.keymap")
require("config.options")

require("lsp.init")
require("snacks")

Snacks.explorer.open()
