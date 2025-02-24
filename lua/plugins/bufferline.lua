return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	opts = {
		options = {
			separator_style = "slant",
			indicator = {
				style = "icon",
				icon = "▎",
			},
			diagnostics = "nvim_lsp",
			offsets = {
				{
					filetype = "snacks_layout_box",
					text = "Explorer",
					text_align = "left",
					highlight = "Directory",
				},
			},
		},
	},
}
