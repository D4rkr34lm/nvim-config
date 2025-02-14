vim.g.mapleader = "<Space>";

require("config.lazy");

vim.cmd("colorscheme tokyonight");

require("config.autocmd");
require("config.keymap");

vim.opt.background = "dark";

vim.opt.number = true;
vim.opt.cursorline = true;

vim.opt.confirm = true;

vim.opt.autoindent = true;
vim.opt.smartindent = true;

vim.opt.spell = true;
vim.opt.spelloptions = {"camel"};

vim.opt.tabstop = 2;
vim.opt.shiftwidth = 2;
