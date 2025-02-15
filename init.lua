vim.g.mapleader = "<Space>";

require("config.lazy");

vim.cmd("colorscheme tokyonight");

require("config.autocmd");
require("config.keymap");
require("config.options");

local lspconfig = require("lspconfig");

lspconfig.lua_ls.setup({});

