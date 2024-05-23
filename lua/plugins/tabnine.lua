-- Tabnine for AI autocompletion!
return {
	"codota/tabnine-nvim",
	config = function()
		require("lazy").setup({
			{
				"codota/tabnine-nvim",
				build = "./dl_binaries.sh",
			},
		})

		require("tabnine").setup({
			disable_auto_comment = true,
			accept_keymap = "<S-Tab>",
			dismiss_keymap = "<C-E>",
			debounce_ms = 800,
			suggestion_color = { gui = "#808080", cterm = 244 },
			exclude_filetypes = { "TelescopePrompt", "NvimTree" },
			log_file_path = nil,
		})
	end,
}
