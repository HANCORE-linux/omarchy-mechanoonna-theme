return {
	{
		"sainnhe/gruvbox-material",
		priority = 1000,
		config = function()
			vim.g.gruvbox_material_background = "hard"
			vim.g.gruvbox_material_transparent_background = 1
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "gruvbox-material",
		},
	},
}