local map = vim.keymap.set

map({ 'i', 's' }, '<Tab>', function()
    return require('snippy').can_expand_or_advance() and '<Plug>(snippy-expand-or-advance)' or '<Tab>'
end, { expr = true })
map({ 'i', 's' }, '<S-Tab>', function()
    return require('snippy').can_jump(-1) and '<Plug>(snippy-previous)' or '<S-Tab>'
end, { expr = true })
map('x', '<Tab>', '<Plug>(snippy-cut-text)')


return {
    { "hrsh7th/nvim-cmp", event = "VeryLazy" },
    { "dcampos/cmp-snippy", event = "VeryLazy" },
    { "hrsh7th/cmp-nvim-lsp", event = "VeryLazy" },
    {
        "dcampos/nvim-snippy",
        ft = "snippets",
        cmd = { "SnippyEdit", "SnippyReload" },
        event = "VeryLazy",
    },
}
