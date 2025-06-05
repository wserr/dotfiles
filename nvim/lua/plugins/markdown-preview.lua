vim.keymap.set("n", "<leader>mp", "<cmd>MarkdownPreview<cr>")

return {
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        build = "cd app && npm install",
        ft = { "markdown" },
        event = "VeryLazy",
    },
}
