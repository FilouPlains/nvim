-- Treesitter.
return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")

        config.setup({
            ensure_installed = {"lua", "html", "css", "javascript", "python",
                                "rust", "bash", "vim", "vimdoc", "latex",
                                "markdown"},
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
