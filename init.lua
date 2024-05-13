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

-- Equivalent of <C-z>.
vim.keymap.set("n", "<C-u>", ":u<CR>", {})

-- Move line up or down.
vim.keymap.set("n", "<A-j>", ":m +1<CR>", {})
vim.keymap.set("n", "<A-k>", ":m -2<CR>", {})

vim.keymap.set("n", "<C-A-w>", "<C-w><", {})

-- Loading lazy.nvim.
local opts = {}

-- Plugin requirement.
-- Lazy.
require("lazy").setup("plugins")

