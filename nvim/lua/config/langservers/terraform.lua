local util = require 'lspconfig.util'

vim.lsp.config["terraformls"] = {
	-- default setup
	cmd = { 'terraform-ls', 'serve' },
	filetypes = { 'terraform', 'terraform-vars' },
	root_dir = util.root_pattern('.terraform', '.git'),
}
