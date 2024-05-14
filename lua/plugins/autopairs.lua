-- Plugins to autoclose braquets.
return {
    "jiangmiao/auto-pairs",
    config = function()
        vim.cmd("let g:AutoPairsMultilineClose = 0")
    end
}
