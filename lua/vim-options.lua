-- Refactoring.
local opt = vim.opt
local map = vim.keymap

-- Basic configurations about tabulation.
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

-- Equivalent of <C-z>.
map.set("n", "<C-u>", ":u<CR>", {})

-- In order to save files.
map.set("n", "<C-s>", ":w<CR>", {})
map.set("v", "<C-s>", "<Esc>:w<CR>", {})
map.set("i", "<C-s>", "<Esc>:w<CR>i<Right>", {})

-- Move line up or down.
map.set("n", "<A-j>", ":m +1<CR>", {})
map.set("n", "<A-k>", ":m -2<CR>", {})

-- Resize pannels vertically and horizontally.
map.set("n", "<C-A-Left>", "<C-w><", {})
map.set("n", "<C-A-Right>", "<C-w>>", {})
map.set("n", "<C-A-Up>", "<C-w>+", {})
map.set("n", "<C-A-Down>", "<C-w>-", {})

-- Copy into the clipboard.
map.set("v", "Y", '"+y', {})

-- 80 column marker.
vim.cmd("set colorcolumn=80")
opt.textwidth = 80

-- Adding numbers.
opt.nu = true
opt.relativenumber = true

-- Modifying highlight while searching comportement.
opt.incsearch = true

-- Terminal colors.
opt.termguicolors = true

-- Update time.
opt.updatetime = 50

-- Show line break
opt.list = true

local space = " "

opt.listchars:append({
    tab = "󰜴⋅",
    eol = "󱞲",
    multispace = space,
    lead = space,
    trail = space,
    nbsp = space,
})

-- Changin vim cursor look.
opt.guicursor = ""

-- Disable line wrap.
opt.wrap = false
vim.o.wrap = false
vim.o.textwidth = 0

-- Retab a file in case of tabulation instead of spaces.
map.set("n", "<Leader>r", ":retab<CR>", {})
