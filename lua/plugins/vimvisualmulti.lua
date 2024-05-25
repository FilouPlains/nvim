-- Enable multicursors mode in Neovim.
return {
	"mg979/vim-visual-multi",
    config = function ()
        vim.cmd("let g:VM_maps['Find Under'] = ''")
        vim.cmd("let g:VM_maps['Find Subword Under'] = ''")
    end
}
