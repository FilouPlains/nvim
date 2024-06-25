-- For adding automatic docstrings.
return {
    "danymat/neogen",
    config = function()
        vim.keymap.set("n", "<leader>d", ":Neogen<CR>", {})

        require("neogen").setup({
            enabled = true,
            snippet_engine = "luasnip",
            languages = {
                python = { template = { annotation_convention = "numpydoc" } },
            },
        })
    end,
}
