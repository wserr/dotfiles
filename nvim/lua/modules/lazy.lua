require("lazy").setup({
	{
		"yetone/avante.nvim",
		event = "VeryLazy",
		lazy = false,
		version = false, -- set this if you want to always pull the latest change
		opts = {
			-- add any opts here
		},
		-- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
		build = "make",
		-- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
		dependencies = {
			"MunifTanjim/nui.nvim",
			"nvim-treesitter/nvim-treesitter",
			"stevearc/dressing.nvim",
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			--- The below dependencies are optional,
			"nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
		},
		{
			-- Make sure to set this up properly if you have lazy=true
			'MeanderingProgrammer/render-markdown.nvim',
			opts = {
				file_types = { "markdown", "Avante" },
			},
			ft = { "markdown", "Avante" },
		},
	},
	{
		"MunifTanjim/nui.nvim",
		lazy = true
	},
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
