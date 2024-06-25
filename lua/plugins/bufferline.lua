-- Adding tabs.
return {
    "akinsho/bufferline.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        -- Keymapping.
        for i = 1, 9 do
            vim.keymap.set("n", "<leader>" .. i, ":BufferLineGoToBuffer" .. i .. "<CR>")
        end

        vim.keymap.set("n", "<C-PageUp>", ":BufferLineCycleNext<CR>")
        vim.keymap.set("n", "<C-PageDown>", ":BufferLineCyclePrev<CR>")
        vim.keymap.set("n", "<A-w>", ":bdelete<CR>")

        require("bufferline").setup({
            highlights = BUFFERLINE_COLORS,
            options = {
                diagnostics = "nvim_lsp",
                offsets = {
                    {
                        filetype = "neo-tree",
                        text_align = "center",
                        separator = true,
                    },
                },
                numbers = function(opts)
                    return string.format("%s", opts.raise(opts.ordinal))
                end,
                separator_style = "slant",
                diagnostics_indicator = function(count, level, diagnostics_dict, context)
                    local s = " "
                    for e, n in pairs(diagnostics_dict) do
                        local sym = e == "error" and " " or (e == "warning" and " " or " ")
                        s = s .. n .. sym
                    end
                    return s
                end,
            },
        })
    end,
}
