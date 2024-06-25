-- Add a plugins to preview Markdown into the we browser!
return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
        vim.fn["mkdp#util#install"]()
    end,
    config = function()
        vim.keymap.set("n", "<leader>p", ":MarkdownPreview<CR>", {})
    end,
}
