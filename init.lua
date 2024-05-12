-- Basic configurations about tabulation.
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-- Grep inside the project.
vim.g.mapleader = " "

-- Adding lazy.nvim has a package manager.
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    -- Latest stable release.
    "--branch=stable", 
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

-- Loading lazy.nvim.
local plugins = {
    -- Monokai color scheme.
    { "tanvirtin/monokai.nvim", name = "monokai", priority = 1000 },
    -- Telescope.
    {"nvim-telescope/telescope.nvim", tag = "0.1.6", dependencies = { "nvim-lua/plenary.nvim" }},
    -- Treesitter.
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}
}
local opts = {}

-- Plugin requirement.
-- Lazy.
require("lazy").setup(plugins, opts)

-- Monokai
require("monokai").setup {}
vim.cmd.colorscheme "monokai"

-- Telescope.
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})

-- Treesitter
local config = require("nvim-treesitter.configs")
config.setup({
    ensure_installed = {"lua", "html", "css", "javascript", "python",
                        "rust", "bash", "vim", "vimdoc", "latex",
                        "markdown"},
    highlight = { enable = true },
    indent = { enable = true },
})

