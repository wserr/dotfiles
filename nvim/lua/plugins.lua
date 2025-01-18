require("lazy").setup({
	{
		"tpope/vim-fugitive",
		event = "VeryLazy",
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		event = "VeryLazy",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
	},
	{
		"nvim-telescope/telescope.nvim",
		event = "VeryLazy",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" }
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},
	{
		"folke/trouble.nvim",
		event = "VeryLazy",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		}
	},
	{ "neovim/nvim-lspconfig", event = "VeryLazy" },
	{ "hrsh7th/nvim-cmp",      lazy = false },
	{ "hrsh7th/cmp-nvim-lsp",  lazy = false },
	{
		'dcampos/nvim-snippy',
		keys = {
			{ '<Tab>', mode = { 'i', 'x' } },
			'g<Tab>',
		},
		ft = 'snippets',
		cmd = { 'SnippyEdit', 'SnippyReload' },
	},
	{
		"olimorris/onedarkpro.nvim",
		priority = 1000, -- Ensure it loads first
	},
})
