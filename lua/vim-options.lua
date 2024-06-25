-- Basic configurations about tabulation.
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.smartindent = true

-- Equivalent of <C-z>.
vim.keymap.set("n", "<C-u>", ":u<CR>", {})

-- In order to save files.
vim.keymap.set("n", "<C-s>", ":w<CR>", {})

-- Move line up or down.
vim.keymap.set("n", "<A-j>", ":m +1<CR>", {})
vim.keymap.set("n", "<A-k>", ":m -2<CR>", {})

vim.keymap.set("n", "<C-A-Left>", "<C-w><", {})
vim.keymap.set("n", "<C-A-Right>", "<C-w>>", {})

-- Copy into the clipboard.
vim.keymap.set("v", "Y", '"+y', {})

-- 80 column marker.
vim.cmd("set colorcolumn=80")
vim.opt.textwidth = 80

-- Adding numbers.
vim.opt.nu = true
vim.opt.relativenumber = true

-- Modifying highlight while searching comportement.
vim.opt.incsearch = true

-- Terminal colors.
vim.opt.termguicolors = true

-- Update time.
vim.opt.updatetime = 50

-- Show line break
vim.cmd(":set list listchars=eol:󱞲")
