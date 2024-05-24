return {
	"romgrk/barbar.nvim",
	dependencies = {
		-- OPTIONAL: for git status.
		"lewis6991/gitsigns.nvim",
		-- OPTIONAL: for file icons.
		"nvim-tree/nvim-web-devicons",
	},
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	opts = {},
	version = "^1.0.0",
}
