-- To add lines to enhance visualization.
return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
        -- Other characters for tabs / spaces.
        -- vim.opt.list = true
        -- Show dots for spaces.
        -- vim.opt.listchars:append("space:⋅")
        -- Show End Of Line characters.
        -- vim.opt.listchars:append("eol:󱞱")

        require("ibl").setup({
            indent = { 
                char = "" 
            },
            scope = {
                enabled = true,
                char = "┊"
            }
        })
    end,
}
