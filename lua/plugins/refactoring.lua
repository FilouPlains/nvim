return {
    {
        "ThePrimeagen/refactoring.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
        config = function()
            require("refactoring").setup()
        end,
    },
    {
        "smjonas/inc-rename.nvim",
        config = function()
            require("inc_rename").setup()

            vim.keymap.set("n", "<leader>rf", ":IncRename ")
        end,
    },
}
