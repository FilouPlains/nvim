-- Monokai color scheme.
return {
    "tanvirtin/monokai.nvim",
    name = "monokai",
    priority = 1000,
    config = function()
        local theme = require("monokai")

        theme.setup({
            palette = require("monokai"),
        })
    end,
}
