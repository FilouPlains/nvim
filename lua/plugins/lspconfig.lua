-- Adding Language Servers (LS) features.
-- Table of wantes LS.
local installed_ls = {
	["lua_ls"] = {},
	["ltex"] = {},
	["markdown_oxide"] = {},
	["r_language_server"] = {},
	["ruff"] = {
		ling = { args = { "--line-length=80" } },
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
			require("mason-lspconfig").setup({
				ensure_installed = installed_ls,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")

			-- Automatically setup all LS.
			for ls_i, parameter_i in pairs(installed_ls) do
				lspconfig[ls_i].setup(parameter_i)
			end

			-- Setting new keymap.
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
