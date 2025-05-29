local util = require 'lspconfig.util'

require 'lspconfig'.terraformls.setup {
	-- default setup
	cmd = { 'terraform-ls', 'serve' },
	filetypes = { 'terraform', 'terraform-vars' },
	root_dir = util.root_pattern('.terraform', '.git'),
}
