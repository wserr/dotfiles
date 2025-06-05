vim.keymap.set("n", "<leader>T", ":Trouble diagnostics<CR>")
vim.keymap.set("n", "<leader>L", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>")

return {
    {
        "folke/trouble.nvim",
        event = "VeryLazy",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        cmd = function()
            require("trouble").setup({
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
                auto_preview = false, -- automatically preview the location of the diagnostic. <esc> to close preview and go back to last window
            })
        end,
    },
}
