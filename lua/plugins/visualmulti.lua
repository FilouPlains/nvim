-- Enable multicursors mode in Neovim.
return {
    "mg979/vim-visual-multi",
    init = function()
        vim.g.VM_maps = {
            ["Find Under"] = "",
            ["Find Subword Under"] = "",
        }

        vim.g.VM_mouse_mappings = 1
    end,
}
