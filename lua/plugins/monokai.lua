-- Monokai color scheme.

return {
    "tanvirtin/monokai.nvim",
    name = "monokai",
    priority = 1000,
    config = function()
        local theme = require("monokai")

        -- To access to the colour scheme.
        COLOUR = require("monokai").classic

        theme.setup({
            palette = COLOUR,
        })
    end,
}
