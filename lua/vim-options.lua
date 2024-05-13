-- Basic configurations about tabulation.
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-- Grep inside the project.
vim.g.mapleader = " "

-- Equivalent of <C-z>.
vim.keymap.set("n", "<C-u>", ":u<CR>", {})

-- Move line up or down.
vim.keymap.set("n", "<A-j>", ":m +1<CR>", {})
vim.keymap.set("n", "<A-k>", ":m -2<CR>", {})

vim.keymap.set("n", "<C-A-w>", "<C-w><", {})

-- Hide TMUX line/bar.
vim.cmd("autocmd VimEnter,VimLeave * silent !tmux set status")
