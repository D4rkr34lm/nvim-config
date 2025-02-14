local keymap = vim.keymap;
local cmd = vim.cmd;

local _feedkey = vim.api.nvim_feedkeys;
local _termcodes = vim.api.nvim_replace_termcodes;

local function feedkey(key)
	_feedkey(key, "n", false);
end

local function termcode(key)
	return _termcodes(key, true, false, true);
end

local function map (mode, input, result, desc)
	keymap.set(mode, input, result, { noremap = true, desc = desc });
end

map("i", "ff", "<Esc>");

map("n", "f", "<Cmd> :write <CR>");
