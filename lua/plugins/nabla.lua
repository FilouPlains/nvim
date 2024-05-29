return {
    "jbyuki/nabla.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
    },
    config = function()
        vim.keymap.set("n", "<A-S-i>", ":lua require('nabla').popup({ border = 'rounded' })<CR>", {})
    end,
}
