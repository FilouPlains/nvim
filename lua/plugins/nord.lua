-- Nord color scheme.

return {
    "gbprod/nord.nvim",
    name = "nord",
    priority = 1000,
    config = function()
        require("nord").set({})
        vim.cmd.colorscheme("nord")


        -- -- To access to the colour scheme.
        -- COLOUR = require("nord")
        -- vim.cmd.colorscheme("nord")
    end,
}
-- 
-- return {
--     "tanvirtin/monokai.nvim",
--     name = "monokai",
--     priority = 1000,
--     config = function()
--     end,
-- }
