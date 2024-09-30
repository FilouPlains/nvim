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

-- To be abble to use "Lazy".
vim.opt.rtp:prepend(lazypath)

-- Redefining leader to space.
vim.g.mapleader = " "

-- Plugin requirement.
-- Lazy.
local lazy = require("lazy")

lazy.setup("plugins")
-- Disable automatic updates checking…
lazy.setup({checker = { enabled = false }})

-- VIM options.
require("vim-options")
