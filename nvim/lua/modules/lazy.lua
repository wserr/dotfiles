require("lazy").setup({
	{
		"nvim-tree/nvim-web-devicons",
		lazy = true
	},
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = true,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup({})
		end,
	},
	{ "mhartington/formatter.nvim", lazy = true },
	{
		"tpope/vim-fugitive",
		lazy = false
	},
	{
		"nvim-telescope/telescope.nvim",
		lazy = true,
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" }
	},
	{ "nvim-lua/plenary.nvim",      lazy = true },
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x"
	},
	{ "neovim/nvim-lspconfig", lazy = false },
	{ "hrsh7th/cmp-nvim-lsp",  lazy = false },
	{ "hrsh7th/nvim-cmp",      lazy = false },
	{ "L3MON4D3/LuaSnip",      lazy = false },
	{ "dcampos/nvim-snippy",   lazy = false },
	{ "dcampos/cmp-snippy",    lazy = false },
	{
		"folke/trouble.nvim",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		keys = {
			{
				"<leader>xx",
				"<cmd>Trouble diagnostics toggle<cr>",
				desc = "Diagnostics (Trouble)",
			},
			{
				"<leader>xX",
				"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
				desc = "Buffer Diagnostics (Trouble)",
			},
			{
				"<leader>cs",
				"<cmd>Trouble symbols toggle focus=false<cr>",
				desc = "Symbols (Trouble)",
			},
			{
				"<leader>cl",
				"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
				desc = "LSP Definitions / references / ... (Trouble)",
			},
			{
				"<leader>xL",
				"<cmd>Trouble loclist toggle<cr>",
				desc = "Location List (Trouble)",
			},
			{
				"<leader>xQ",
				"<cmd>Trouble qflist toggle<cr>",
				desc = "Quickfix List (Trouble)",
			},
		},
	},
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		lazy = true,
		ft = { "markdown" },
		build = function() vim.fn["mkdp#util#install"]() end,
	},
	{
		"jackMort/ChatGPT.nvim",
		lazy = true,
		event = "VeryLazy",
		init = function()
			local config = {
				actions_paths = { os.getenv("XDG_CONFIG_HOME") .. "/nvim/actions.json" },
			}
			require("chatgpt").setup(config)
		end,
		dependencies = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
			"folke/trouble.nvim",
			"nvim-telescope/telescope.nvim"
		}
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		'stevearc/overseer.nvim',
		lazy = true,
		opts = {},
	}
})
