local lspconfig = require("lspconfig")

lspconfig.ts_ls.setup({
	filetypes = { "typescript", "javascript" },
})

lspconfig.volar.setup({
	filetypes = { "vue" },
	init_options = {
		vue = {
			hybridMode = false,
		},
	},
})
