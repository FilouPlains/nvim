-- For adding automatic docstrings.
return {
    "danymat/neogen",
    config = function()
        neogen = require("neogen")

        -- Generate the docstrings.
        vim.keymap.set("n", "<leader>d", ":Neogen<CR>", {})

        neogen.setup({
            enabled = true,
            snippet_engine = "luasnip",
            languages = {
                python = { template = { annotation_convention = "numpydoc" } },
            },
        })
    end,
}
