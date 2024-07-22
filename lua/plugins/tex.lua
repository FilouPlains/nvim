-- Add LaTeX support.
return {
    "lervag/vimtex",
    lazy = false,
    init = function()
        vim.cmd([[
            filetype plugin indent on
            let g:vimtex_view_general_viewer = "okular"
            let maplocalleader = " "
            let g:vimtex_view_general_options = "--unique file:@pdf\#src:@line@tex"
        ]])
    end,
}
