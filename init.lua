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
local opts = {}

-- Grep inside the project.
vim.g.mapleader = " "

-- Plugin requirement.
-- Lazy.
require("lazy").setup("plugins")

-- VIM options.
require("vim-options")

