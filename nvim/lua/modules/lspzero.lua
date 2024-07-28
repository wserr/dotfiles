local lsp_zero = require('lsp-zero')
lsp_zero.extend_lspconfig()

lsp_zero.on_attach(function(_, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({ buffer = bufnr })
end)

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-f>'] = cmp_action.luasnip_jump_forward(),
		['<C-b>'] = cmp_action.luasnip_jump_backward(),
		['<C-u>'] = cmp.mapping.scroll_docs(-4),
		['<C-d>'] = cmp.mapping.scroll_docs(4),
	}),
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
})
local cmp = require('cmp')

cmp.setup({
	sources = {
		{ name = "snippy" },                       -- nvim-cmp source for vim-vsnip
		{ name = "path" },                         -- file paths
		{ name = "nvim_lsp",               keyword_length = 3 }, -- from language server
		{ name = "nvim_lsp_signature_help" },      -- display function signatures with current parameter emphasized
		{ name = "nvim_lua",               keyword_length = 2 }, -- complete neovim's Lua runtime API such vim.lsp.*
		{ name = "buffer",                 keyword_length = 2 }, -- source current buffer
		{ name = "vsnip",                  keyword_length = 2 }, -- nvim-cmp source for vim-vsnip
		{ name = "calc" },                         -- source for math calculation
	}
})
