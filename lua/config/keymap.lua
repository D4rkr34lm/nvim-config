require("snacks")

local keymap = vim.keymap
local cmd = vim.cmd

local _feedkey = vim.api.nvim_feedkeys
local _termcodes = vim.api.nvim_replace_termcodes

local function feedkey(key)
	_feedkey(key, "n", false)
end

local function termcode(key)
	return _termcodes(key, true, false, true)
end

local function map(mode, input, result, desc)
	keymap.set(mode, input, result, { noremap = true, desc = desc })
end
-- --------------------
-- Cmp setup
-- -------------------
local cmp = require("cmp")
map("i", "<Up>", function()
	if cmp.visible() then
		cmp.select_prev_item()
	else
		feedkey(termcode("<Up>"))
	end
end)

map("i", "<Down>", function()
	if cmp.visible() then
		cmp.select_next_item()
	else
		feedkey(termcode("<Down>"))
	end
end)

map("i", "<Tab>", function()
	if cmp.visible() then
		cmp.confirm()
	else
		feedkey(termcode("<Tab>"))
	end
end)

map("i", "<Esc>", function()
	if cmp.visible() then
		cmp.abort()
	else
		feedkey(termcode("<Esc>"))
	end
end)

map("i", "ff", "<Esc>")

map("n", "f", "<Cmd> :write <CR>")

map("n", "z", "<Cmd> :undo <CR>")
map("n", "u", "<Cmd> :redo <CR>")

map("n", "<Leader>l", function()
	vim.lsp.buf.hover()
end, "Show lsp token info")

local picker = Snacks.picker

map("n", "<Leader>ff", function()
	picker.files()
end, "Search all files")

map("n", "<Leader>fg", function()
	picker.git_files()
end, "Search git files")

map("n", "<Leader>gg", function()
	picker.git_grep()
end, "Grep git files")

map("n", "<Leader>gf", function()
	picker.grep()
end, "Grep all files")
