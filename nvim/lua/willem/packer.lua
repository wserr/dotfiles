-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'puremourning/vimspector'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  require("rose-pine").setup()
		  vim.cmd('colorscheme rose-pine')
	  end
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},         -- Required
		  {'hrsh7th/cmp-nvim-lsp'},     -- Required
		  {'hrsh7th/cmp-buffer'},       -- Optional
		  {'hrsh7th/cmp-path'},         -- Optional

          {'hrsh7th/cmp-nvim-lsp-signature-help'},          -- Optional    
		  {'hrsh7th/cmp-vsnip'}, -- Optional
		  {'hrsh7th/vim-vsnip'}, -- Optional

		  {'saadparwaiz1/cmp_luasnip'}, -- Optional
		  {'hrsh7th/cmp-nvim-lua'},     -- Optional

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},             -- Required
		  {'rafamadriz/friendly-snippets'}, -- Optional

          -- Rust
          {'simrat39/rust-tools.nvim'}
	  }
  }

  -- install without yarn or npm
  use({
      "iamcco/markdown-preview.nvim",
      run = function()
          vim.fn["mkdp#util#install"]()
      end,
  })
  use({
      "nvim-tree/nvim-tree.lua",
      requires = {
          "nvim-tree/nvim-web-devicons", -- optional, for file icons
      },
  })
  use("petertriho/nvim-scrollbar")

  use({
      "iamcco/markdown-preview.nvim",
      run = "cd app && npm install",
      setup = function()
          vim.g.mkdp_filetypes = { "markdown" }
      end,
      ft = { "markdown" },
  })
  use 'ekickx/clipboard-image.nvim'
end)
