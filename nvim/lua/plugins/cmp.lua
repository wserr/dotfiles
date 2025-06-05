return {
    { "hrsh7th/nvim-cmp", event = "VeryLazy" },
    { "dcampos/cmp-snippy", event = "VeryLazy" },
    { "hrsh7th/cmp-nvim-lsp", event = "VeryLazy" },
    {
        "dcampos/nvim-snippy",
        keys = {
            { "<Tab>", mode = { "i", "x" } },
            "g<Tab>",
        },
        ft = "snippets",
        cmd = { "SnippyEdit", "SnippyReload" },
        event = "VeryLazy",
    },
}
