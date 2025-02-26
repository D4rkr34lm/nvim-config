vim.api.nvim_create_user_command("Q", "qa", {})

vim.api.nvim_create_user_command("InlayOn", function()
	vim.lsp.inlay_hint.enable(true)
end, {})

vim.api.nvim_create_user_command("InlayOff", function()
	vim.lsp.inlay_hint.enable(false)
end, {})
