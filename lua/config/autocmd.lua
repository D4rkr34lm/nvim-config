local fidget = require("fidget")

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		fidget.notify("Formating ...", vim.log.levels.INFO)
		require("conform").format({ bufnr = args.buf }, function(err)
			if err then
				vim.notify("Formating failed: " .. err, vim.log.levels.ERROR)
			else
				fidget.notify("Formating completed", vim.log.levels.INFO)
			end
		end)
	end,
})
