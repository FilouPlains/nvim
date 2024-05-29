-- None-LS, fork of Null-LS.
-- List for files for "prettierd".
local file_type = {
	"css",
	"graphql",
	"html",
	"javascript",
	"javascriptreact",
	"json",
	"less",
	"markdown",
	"scss",
	"typescript",
	"typescriptreact",
	"yaml",
}

local format_list = {
	"stylua",
	"prettierd",
}

return {
	{
		"nvimtools/none-ls.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = format_list,
			})

			local null_ls = require("null-ls")
			local null_format_list = {}

			for i, format_i in pairs(format_list) do
				null_format_list[i] = null_ls.builtins.formatting[format_i]
			end

			null_ls.setup({ sources = null_format_list })

			-- Function that format a file using "Prettier" if good extension
			-- file detected or another one (bring with LSP or NoneLS).
			local function format()
				local view = vim.fn.winsaveview()

				local launch_format = true

				for _, type in pairs(file_type) do
					if type == vim.bo.filetype then
						launch_format = false
						vim.cmd("Prettier")
					end
				end

				if launch_format then
					vim.cmd("lua vim.lsp.buf.format()")
				end

				vim.fn.winrestview(view)
			end

			-- Command to format a file.
			vim.keymap.set("n", "<leader>f", format, {})
		end,
	},
	{
		"MunifTanjim/prettier.nvim",
		config = function()
			-- Setup prettierd.
			local prettier = require("prettier")

			prettier.setup({
				bin = "prettierd",
				filetypes = file_type,
				cli_options = {
					arrow_parens = "always",
					bracket_spacing = true,
					bracket_same_line = false,
					embedded_language_formatting = "auto",
					end_of_line = "lf",
					html_whitespace_sensitivity = "css",
					jsx_single_quote = false,
					print_width = 80,
					prose_wrap = "preserve",
					quote_props = "as-needed",
					semi = true,
					single_attribute_per_line = false,
					single_quote = false,
					tab_width = 4,
					trailing_comma = "es5",
					use_tabs = false,
					vue_indent_script_and_style = false,
				},
			})
		end,
	},
}
