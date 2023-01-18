-- load

-- plugins
require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"sumneko_lua",
		"rust_analyzer",
		"bashls",
		"prosemd_lsp",
		"omnisharp",
		"dockerls",
		"tsserver",
	},
})

-- local modules
require("plugins")
require("keys")
require("buffer_settings")
require("nvim-tree-setup")
require("lspconfig-setup")
require("linting-setup")
require("formatting-setup")
require("cmp-setup")
require("scrollbar").setup()
