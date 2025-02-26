local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup({
	settings = {
		Lua = {
			hint = {
				enable = true, -- necessary
			},
		},
	},
})
