-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { "rebelot/kanagawa.nvim" }

  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = ':TSUpdate'
  }

  use { 'nvim-treesitter/playground' }

  use { 'ThePrimeagen/harpoon' }

  use { 'mbbill/undotree' }

  use({
	  "kylechui/nvim-surround",
	  tag = "*", -- Use for stability; omit to use `main` branch for the latest features
	  config = function()
		  require("nvim-surround").setup({
			  -- Configuration here, or leave empty to use defaults
		  })
	  end
  })

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {                                      -- Optional
		  'williamboman/mason.nvim',
		  run = function()
			  pcall(vim.cmd, 'MasonUpdate')
			end,
		  },
	  {'williamboman/mason-lspconfig.nvim'}, -- Optional

	  -- Autocompletion
	  {'hrsh7th/nvim-cmp'},     -- Required
	  {'hrsh7th/cmp-nvim-lsp'}, -- Required
	  {'L3MON4D3/LuaSnip'}      -- Required
      }
  }

  use { "folke/trouble.nvim" }

  use {
      "kdheepak/lazygit.nvim",
      -- optional for floating window border decoration
      requires = {
          "nvim-lua/plenary.nvim",
      },
  }

  use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }

  use { 'HiPhish/rainbow-delimiters.nvim' }

  use {
      "folke/todo-comments.nvim",
      requires = { "nvim-lua/plenary.nvim" }
  }

  use { 'jose-elias-alvarez/null-ls.nvim' }

  use{ 'MunifTanjim/prettier.nvim' }

  use { 'jose-elias-alvarez/typescript.nvim' }

  use {
      'nvim-lualine/lualine.nvim',
      requires = {
          'linrongbin16/lsp-progress.nvim',
          opt = true
      }
  }

  use {
      'linrongbin16/lsp-progress.nvim',
      config = function()
          require('lsp-progress').setup()
      end
  }

  use { 'lewis6991/gitsigns.nvim' }

  use { 'rust-lang/rust.vim' }

  use { 'nvim-treesitter/nvim-treesitter-context' }

  use { 'nvim-tree/nvim-tree.lua' }

  use { 'f-person/git-blame.nvim' }

  use { 'rhysd/git-messenger.vim' }

  use({ 
      "iamcco/markdown-preview.nvim", 
      run = "cd app && npm install",
      setup = function() vim.g.mkdp_filetypes = { "markdown" } end, 
      ft = { "markdown" }, 
  })

  use { 'rose-pine/neovim', as = 'rose-pine' }

  use { 'Almo7aya/openingh.nvim' }

end)
