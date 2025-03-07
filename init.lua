vim.g.mapleader = "<Space>"

require("config.lazy")

require("config.autocmd")
require("config.keymap")
require("config.options")
require("config.commands")

require("lsp.init")
require("snacks")

Snacks.explorer.open()
