-- Adding Language Servers (LS) features.
-- Table of wantes LS.
local installed_ls = {
	["lua_ls"] = {},
	["ltex"] = {},
	["markdown_oxide"] = {},
	["r_language_server"] = {},
	["pyright"] = {},
	["ruff_lsp"] = {
		on_attach = on_attach,
		capabilities = capabilities,
		filetypes = { "python" },
		init_options = {
			settings = {
				lint = { args = { "--line-length=80" } },
				format = { args = { "--line-length=80" } },
			},
		},
	},
	["html"] = {},
	["cssls"] = {},
	["rust_analyzer"] = {},
	["bashls"] = {},
}

-- Setting things up.
return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			local lsp_list = {}
			local i = 1

			for ls_i, _ in pairs(installed_ls) do
				lsp_list[i] = ls_i

				i = i + 1
			end

			require("mason-lspconfig").setup({
				ensure_installed = lsp_list,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			-- Adding snippet based on LSP.
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- Global LSP configuration.
			local lspconfig = require("lspconfig")

			-- Automatically setup all LS.
			for ls_i, parameter_i in pairs(installed_ls) do
				-- LSP snippets.
				parameter_i["capabilities"] = capabilities

				-- Other configurations.
				lspconfig[ls_i].setup(parameter_i)
			end

			-- Setting new keymap.
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>rf", vim.lsp.buf.rename, {})
		end,
	},
}
