-- Basic configurations about tabulation.
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

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
    { "tanvirtin/monokai.nvim", name = "monokai", priority = 1000 }
}
local opts = {}

-- Plugin requirement.
require("lazy").setup(plugins, opts)

require("monokai").setup {}
vim.cmd.colorscheme "monokai"
